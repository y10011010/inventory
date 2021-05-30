YQ 		= $(shell which yq)
NEW 	= $(YQ) new -s
MERGE = $(YQ) merge

FILES = $(wildcard inventory/*.yml)
RESULTS = $(wildcard /tmp/inventory/*.yml)


default: inventory.yml


inventory.yml: $(FILES)
	${MAKE} $(FILES)
	$(MERGE) $(RESULTS) > $@


/tmp/inventory:
	mkdir -p $@

.PHONY: /tmp/inventory /tmp/inventory/%.yml
inventory/%.yml: .PHONY
	$(NEW) $@ "" "" > /tmp/$@


/tmp/inventory/%.yml: /tmp/inventory

clean:
	rm -rf $(RESULTS)

_data/categories:
	@${MAKE} $(wildcard _data/categories/*.json)

_data/categories/%.json:
	@jq -rf $*.jq < $@

console:
	@node $@.js | jq -rf $(CONTEXT).jq
