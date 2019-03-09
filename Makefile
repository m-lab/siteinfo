SHELL=/bin/bash
ALL=$(shell cd formats; find . -name '*.jsonnet' \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
TESTS=$(shell find . -type f -a -name '*_test.jsonnet' \
	        | grep -v jsonnetunit \
	        | sed -e 's/\.\///' -e 's/.jsonnet//g' )
PREFIX=$(shell date +%Y%m%d )
DEPS=sites.jsonnet sites/_default.jsonnet lib/site.jsonnet experiments.jsonnet

.PRECIOUS: %.ts

all: $(ALL)

test: $(TESTS)

clean:
	rm -f *.json *.zone *.ts

%.json: formats/%.json.jsonnet $(DEPS)
	time jsonnet -J . $< > $@

%_test: %_test.jsonnet $(DEPS)
	time jsonnet -J . -J jsonnetunit $<

%.zone: formats/%.zone.jsonnet $(DEPS) serial.ts
	jsonnet -J . --ext-str prefix=$(PREFIX) --ext-str operation=update \
	  formats/serial.ts.jsonnet > .serial.tmp
	mv .serial.tmp serial.ts
	jsonnet -J . --ext-str prefix=$(PREFIX) --ext-str operation=format \
	  formats/serial.ts.jsonnet > .serial.raw
	time jsonnet -J . --string --ext-str serial=`cat .serial.raw` $< > $@

%.ts: formats/%.ts.jsonnet
	jsonnet --ext-str prefix=$(PREFIX) --ext-str operation=create $< > $@

fmt:
	@find . -name '*.jsonnet' -print0 | while read -d $$'\0' f; do \
	  jsonnet fmt --indent 2 --max-blank-lines 2 --sort-imports \
	              --string-style s --comment-style s $$f | diff $$f - ; \
	  jsonnet fmt --in-place $$f ; \
	done
