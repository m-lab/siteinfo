SHELL=/bin/bash
ALL=$(shell pushd formats; find . -name "*.jsonnet" \
            | sed -e "s/\.\//output\/$(VERSION)\//" -e "s/.jsonnet//g" )
TESTS=$(shell find . -type f -a -name "*_test.jsonnet" \
	        | grep -v jsonnetunit \
	        | sed -e "s/\.\///" -e "s/.jsonnet//g" )
DEPS=sites.jsonnet sites/_default.jsonnet lib/site.$(VERSION).jsonnet experiments.jsonnet
LATEST=$(shell date +%Y%m%d00 )
CURRENT=$(shell dig @dns.measurementlab.net soa measurementlab.net \
      | grep SOA \
      | awk '{print $$7}' )
OUTDIR=output
ARCHDIR:=$(shell date +%Y/%m/%d/%H:%M:%S )
SJSONNET_JAR=/usr/bin/sjsonnet.jar
# NOTE: It's possible to execute the sjsonnet.jar directly, however that uses
# the default heap size of 64M which is not always enough for our large outputs.
# So, run sjsonnet the hard way and provide maximum heap.
SJSONNET=java -Xmx2G -cp $(SJSONNET_JAR) sjsonnet.SjsonnetMain

.PHONY: output

all: output $(ALL) $(OUTDIR)/$(VERSION)/index.html
	mkdir -p $(OUTDIR)/configs/$(VERSION)/sites/$(ARCHDIR)
	cp $(OUTDIR)/$(VERSION)/sites/* $(OUTDIR)/configs/$(VERSION)/sites/$(ARCHDIR)/
	mkdir -p $(OUTDIR)/configs/$(VERSION)/zones/$(ARCHDIR)
	cp $(OUTDIR)/$(VERSION)/zones/* $(OUTDIR)/configs/$(VERSION)/zones/$(ARCHDIR)/
	mkdir -p $(OUTDIR)/configs/$(VERSION)/adhoc/$(ARCHDIR)
	cp $(OUTDIR)/$(VERSION)/adhoc/* $(OUTDIR)/configs/$(VERSION)/adhoc/$(ARCHDIR)/

test: $(TESTS)

output:
	mkdir -p $(OUTDIR)/$(VERSION)/zones
	mkdir -p $(OUTDIR)/$(VERSION)/sites
	mkdir -p $(OUTDIR)/$(VERSION)/adhoc

clean:
	rm -f *.json *.zone
	rm -rf output

$(OUTDIR)/$(VERSION)/sites/%.json: formats/sites/%.json.jsonnet $(DEPS)
	time $(SJSONNET) -J . --ext-str=$(strip $(VERSION)) $< > $@

$(OUTDIR)/$(VERSION)/adhoc/%.json: formats/adhoc/%.json.jsonnet $(DEPS)
	# NOTE: we must use jsonnet to support the two-argument form of std.sort().
	time jsonnet -J . --ext-str version=$(strip $(VERSION)) $< > $@

%_test: %_test.jsonnet $(DEPS)
	time $(SJSONNET) -J . -J jsonnetunit $<

# NOTE: sjsonnet.jar does not support the --string option. And, jsonnet alone
# takes over 6min to process the zone file. So, this two step operation saves
# _considerable_ time.
#
# A single jsonnet file is responsible for generating the subdomain zones
# for all 3 GCP projects. That jsonnet filename has a prefix of 'projects_'.
# The mv command below will replace 'projects_' with the appropriate project
# name, otherwise the operating is a no-op.
$(OUTDIR)/$(VERSION)/zones/%.zone: formats/zones/%.zone.jsonnet $(DEPS)
	time $(SJSONNET) -J . \
		--ext-str latest=$(strip $(LATEST)) \
		--ext-str project=$(strip $(PROJECT)) \
		--ext-str version=$(strip $(VERSION)) $< \
		| jsonnet --string - > $@
	$(eval ZONE_FILE := $(shell echo $@ | sed -e "s/projects_/$(PROJECT)./"))
	mv $@ ${ZONE_FILE}
	./zonediff.sh ${ZONE_FILE}

$(OUTDIR)/$(VERSION)/%.html: %.html.jsonnet $(DEPS)
	cd $(OUTDIR)/$(VERSION) && find . -type f | grep -v 'index.html' | sort > ../files.list
	time jsonnet -J . \
		--ext-str latest=$(strip $(shell date +%Y-%m-%dT%H:%M:%S )) \
		--ext-str version=$(strip $(VERSION)) \
		--string $< > $@

# NOTE: this target only works with the C++ implementation of jsonnet.
fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnetfmt --indent 2 --max-blank-lines 2 --sort-imports \
	             --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnetfmt --in-place $$f ; \
	done
