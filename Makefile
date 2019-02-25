SHELL=/bin/bash
ALL=$(shell cd formats; find . -name '*.jsonnet' \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )

DEPS=sites.jsonnet sites/_default.jsonnet

all: $(ALL)

%.json: formats/%.json.jsonnet $(DEPS)
	time jsonnet -J . $< > $@

fmt:
	@for f in `find . -name "*.jsonnet"` ; do \
        jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
		            --string-style s --comment-style s $$f | diff $$f - ; \
	    jsonnet fmt --in-place $$f ; \
	done
