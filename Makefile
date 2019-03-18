SHELL=/bin/bash
ALL=$(shell cd formats; find . -name '*.jsonnet' \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
TESTS=$(shell find . -type f -a -name '*_test.jsonnet' \
	        | grep -v jsonnetunit \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet experiments.jsonnet
LATEST=$(shell date +%Y%m%d00 )
CURRENT=$(shell dig @dns.measurementlab.net soa measurementlab.net \
      | grep SOA \
      | awk '{print $$7}' )

all: $(ALL)

test: $(TESTS)

clean:
	rm -f *.json *.zone

%.json: formats/%.json.jsonnet $(DEPS)
	time jsonnet -J . $< > $@

%_test: %_test.jsonnet $(DEPS)
	time jsonnet -J . -J jsonnetunit $<

%.zone: formats/%.zone.jsonnet $(DEPS)
	time jsonnet -J . --string --ext-str latest=$(strip $(LATEST)) \
		--ext-str serial=$(strip $(CURRENT)) \
		$< > $@

fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
	              --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnet fmt --in-place $$f ; \
	done
