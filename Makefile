SHELL=/bin/bash
ALL=$(shell pushd formats; find . -name '*.jsonnet' \
            | sed -e 's/\.\///' -e 's/.jsonnet//g' )
TESTS=$(shell find . -type f -a -name '*_test.jsonnet' \
	        | grep -v jsonnetunit \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet experiments.jsonnet
LATEST=$(shell date +%Y%m%d00 )
CURRENT=$(shell dig @dns.measurementlab.net soa measurementlab.net \
      | grep SOA \
      | awk '{print $$7}' )
OUTDIR=output
ARCHDIR:=$(shell date +%Y/%m/%d/%H:%M:%S )
SJSONNET_JAR=~/bin/sjsonnet.jar
# NOTE: It's possible to execute the sjsonnet.jar directly, however that uses
# the default heap size of 64M which is not always enough for our large outputs.
# So, run sjsonnet the hard way and provide maximum heap.
SJSONNET=java -Xmx2G -cp $(SJSONNET_JAR) sjsonnet.SjsonnetMain

.PHONY: output

all: output $(ALL)
	mkdir -p $(OUTDIR)/configs/sites/$(ARCHDIR)
	cp $(OUTDIR)/v1/sites/* $(OUTDIR)/configs/sites/$(ARCHDIR)/
	mkdir -p $(OUTDIR)/configs/zones/$(ARCHDIR)
	cp $(OUTDIR)/v1/zones/* $(OUTDIR)/configs/zones/$(ARCHDIR)/
	mkdir -p $(OUTDIR)/configs/adhoc/$(ARCHDIR)
	cp $(OUTDIR)/v1/adhoc/* $(OUTDIR)/configs/adhoc/$(ARCHDIR)/

test: $(TESTS)

output:
	mkdir -p $(OUTDIR)/v1/zones
	mkdir -p $(OUTDIR)/v1/sites
	mkdir -p $(OUTDIR)/v1/adhoc

clean:
	rm -f *.json *.zone

sites/%.json: formats/sites/%.json.jsonnet $(DEPS)
	time $(SJSONNET) -J . $< > $(OUTDIR)/v1/$@

adhoc/%.json: formats/adhoc/%.json.jsonnet $(DEPS)
	# NOTE: we must use jsonnet to support the two-argument form of std.sort().
	time jsonnet -J . $< > $(OUTDIR)/v1/$@

%_test: %_test.jsonnet $(DEPS)
	time $(SJSONNET) -J . -J jsonnetunit $<

# NOTE: sjsonnet.jar does not support the --string option. And, jsonnet alone
# takes over 6min to process the zone file. So, this two step operation saves
# _considerable_ time.
zones/%.zone: formats/zones/%.zone.jsonnet $(DEPS)
	time $(SJSONNET) -J . \
	  --ext-str latest=$(strip $(LATEST)) \
		--ext-str serial=$(strip $(CURRENT)) $< \
		| jsonnet --string - > $(OUTDIR)/v1/$@
	./zonediff.sh $(OUTDIR)/v1/zones

# NOTE: this target only works with the C++ implementation of jsonnet.
fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
	              --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnet fmt --in-place $$f ; \
	done
