SHELL=/bin/bash
ALL=$(shell cd formats; find . -name '*.jsonnet' \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )

DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet

all: $(ALL)

%.json: formats/%.json.jsonnet $(DEPS)
	time jsonnet -J . $< > $@

fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
	              --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnet fmt --in-place $$f ; \
	done
