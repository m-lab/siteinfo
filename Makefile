SHELL=/bin/bash
ALL=$(shell pushd formats/$(VERSION); find . -name "*.jsonnet" \
            | sed -e "s/\.\//output\/$(VERSION)\//" -e "s/.jsonnet//g" )
TESTS=$(shell find . -type f -a -name "*_test.jsonnet" \
	        | grep -v jsonnetunit \
	        | sed -e "s/\.\///" -e "s/.jsonnet//g" )
DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet experiments.jsonnet
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
	mkdir -p $(OUTDIR)/configs/$(VERSION)/retired-sites/$(ARCHDIR)
	cp $(OUTDIR)/$(VERSION)/retired-sites/* $(OUTDIR)/configs/$(VERSION)/retired-sites/$(ARCHDIR)/
	mkdir -p $(OUTDIR)/configs/$(VERSION)/zones/$(ARCHDIR)
	cp $(OUTDIR)/$(VERSION)/zones/* $(OUTDIR)/configs/$(VERSION)/zones/$(ARCHDIR)/
	mkdir -p $(OUTDIR)/configs/$(VERSION)/adhoc/$(ARCHDIR)
	cp $(OUTDIR)/$(VERSION)/adhoc/* $(OUTDIR)/configs/$(VERSION)/adhoc/$(ARCHDIR)/

test: $(TESTS)

output:
	mkdir -p $(OUTDIR)/$(VERSION)/zones
	mkdir -p $(OUTDIR)/$(VERSION)/sites
	mkdir -p $(OUTDIR)/$(VERSION)/retired-sites
	mkdir -p $(OUTDIR)/$(VERSION)/adhoc

clean:
	rm -f *.json *.zone
	rm -rf output

$(OUTDIR)/$(VERSION)/sites/%.json: formats/$(VERSION)/sites/%.json.jsonnet $(DEPS)
	time $(SJSONNET) -J . --ext-str sitesource=sites $< > $@

$(OUTDIR)/$(VERSION)/retired-sites/%.json: formats/$(VERSION)/sites/%.json.jsonnet $(DEPS)
	time $(SJSONNET) -J . --ext-str sitesource=retired $< > $@

$(OUTDIR)/$(VERSION)/adhoc/%.json: formats/$(VERSION)/adhoc/%.json.jsonnet $(DEPS)
	# NOTE: we must use jsonnet to support the two-argument form of std.sort().
	time jsonnet -J . $< > $@

%_test: %_test.jsonnet $(DEPS)
	time $(SJSONNET) -J . -J jsonnetunit --ext-str version=$(VERSION) $<

# NOTE: sjsonnet.jar does not support the --string option. And, jsonnet alone
# takes over 6min to process the zone file. So, this two step operation saves
# _considerable_ time.
$(OUTDIR)/$(VERSION)/zones/%.zone: formats/$(VERSION)/zones/%.zone.jsonnet $(DEPS)
	time $(SJSONNET) -J . \
		--ext-str project=$(strip $(PROJECT)) \
		--ext-str version=$(strip $(VERSION)) \
		--ext-str zone=$(shell basename $@) $< \
		| jsonnet --string - > $@
	$(eval ZONE_FILE := $(shell echo $@ | sed -e "s/projects_/$(PROJECT)./"))
	if [[ $@ != ${ZONE_FILE} ]] ; then mv $@ ${ZONE_FILE} ; fi
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
