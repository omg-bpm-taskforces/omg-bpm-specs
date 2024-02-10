all: classes elements-vs-types attributes

classes:
	xpath -q -e '//xsd:complexType/@name' ../../SDMN.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SDMN.xsd.txt
	xpath -q -e '//xsd:complexType/@name' ../../SDMN-Semantic.xsd | sed 's/^ name="t\|"$$//g' | sort >> classes-from-SDMN.xsd.txt

# compare element names with type names
elements-vs-types:
	for file in SDMN SDMN-Semantic; do xpath -q -e '//xsd:element[@type]/@name|//xsd:element/@type' ../../$$file.xsd | sed 's/^ name="\|^ type="[^:]\+:t\?\|"$$//g' >> elements-vs-types-in-SDMN.xsd.txt; done
	for file in SDMN SDMN-Semantic; do xpath -q -e '//xsd:element[@type]/@name|//xsd:complexType/@name' ../../$$file.xsd | sed 's/^ name="t\?\|"$$//g' | sort >> elements-vs-types-in-SDMN.xsd-sorted.txt; done

attributes:
	for file in SDMN SDMN-Semantic; do xpath -q -e '//xsd:attribute/@name' ../../$$file.xsd | sed 's/^ name="\|"$$//g' | sort >> attributes-in-SDMN.xsd.txt; done

install:
	sudo apt install libxml-xpath-perl
