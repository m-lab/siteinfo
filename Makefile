SHELL=/bin/bash
ALL=$(shell cd formats; find . -name '*.jsonnet' \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )

TESTS=$(shell find . -type f -a -name '*_test.jsonnet' \
	        | grep -v jsonnetunit \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )

DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet

all: $(ALL)

test: $(TESTS)

clean:
	rm -f *.json

%.json: formats/%.json.jsonnet $(DEPS)
	time jsonnet -J . $< > $@

%_test: %_test.jsonnet $(DEPS)
	time jsonnet -J . -J jsonnetunit $<

fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
	              --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnet fmt --in-place $$f ; \
	done
