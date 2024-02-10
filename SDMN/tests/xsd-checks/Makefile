all: classes elements-vs-types attributes

classes:
	xpath -q -e '//xs:complexType/@name' ../../SDMN.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SDMN.xsd.txt

# compare element names with type names
elements-vs-types:
	xpath -q -e '//xs:element[@type]/@name|//xs:element/@type' ../../SDMN.xsd | sed 's/^ name="\|^ type="[^:]\+:t\?\|"$$//g' > elements-vs-types-in-SDMN.xsd.txt
	xpath -q -e '//xs:element[@type]/@name|//xs:complexType/@name' ../../SDMN.xsd | sed 's/^ name="t\?\|"$$//g' | sort > elements-vs-types-in-SDMN.xsd-sorted.txt

attributes:
	xpath -q -e '//xs:attribute/@name' ../../SDMN.xsd | sed 's/^ name="\|"$$//g' | sort > attributes-in-SDMN.xsd.txt

install:
	sudo apt install libxml-xpath-perl
