SHELL=/bin/bash
ALL=$(shell cd formats; find . -name '*.jsonnet' \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
TESTS=$(shell find . -type f -a -name '*_test.jsonnet' \
	        | grep -v jsonnetunit \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet experiments.jsonnet
SERIAL=$(shell ( \
  prefix=$$( date +%Y%m%d ); \
  current=$$( dig @dns.measurementlab.net soa measurementlab.net \
	    | grep SOA \
			| awk '{print $$7}' \
	); \
	if [[ -z "$$current" ]]; then \
	  exit 1; \
	fi; \
  if [[ $$current -lt $${prefix}00 ]]; then \
    echo $${prefix}00; \
  else \
    echo $$(( $$current + 1 )); \
  fi \
))

all: $(ALL)

test: $(TESTS)

clean:
	rm -f *.json *.zone

%.json: formats/%.json.jsonnet $(DEPS)
	time jsonnet -J . $< > $@

%_test: %_test.jsonnet $(DEPS)
	time jsonnet -J . -J jsonnetunit $<

%.zone: formats/%.zone.jsonnet $(DEPS)
	@if [[ -z "$(strip $(SERIAL))" ]] ; then \
	  echo 'ERROR: Empty serial ID from shadow master; exiting early.'; exit 1; \
	fi
	time jsonnet -J . --string --ext-str serial=$(SERIAL) $< > $@

fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
	              --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnet fmt --in-place $$f ; \
	done
