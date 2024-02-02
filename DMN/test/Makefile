.PHONY: all
all: validate

.PHONY: validate
validate:
	find . -name '*.dmn' -exec xmllint --schema ../DMN15.xsd --noout {} \;