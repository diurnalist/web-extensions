MANIFESTS := $(shell find . -path './template' -prune -path './*/node_modules' -prune -o -name manifest.json -print)

README.md: $(MANIFESTS)
	scripts/update-readme.sh $(MANIFESTS)
