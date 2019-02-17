MANIFESTS := $(shell find . -path './*/node_modules' -prune -o -name manifest.json -print)

README.md: $(MANIFESTS)
	scripts/update-readme.sh $(MANIFESTS)
