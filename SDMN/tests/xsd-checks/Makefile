all: classes elements-vs-types properties

classes:
	xpath -q -e '//xs:complexType/@name' ../../SDMN.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SDMN.xsd.txt
	xpath -q -e '//*[@xmi:type="uml:Class"]/@name' ../../SDMN.xmi | sed 's/^ name="\|"$$//g' | sort > classes-from-SDMN.xmi.txt

# compare element names with type names
elements-vs-types:
	xpath -q -e '//xs:element[@type]/@name|//xs:element/@type' ../../SDMN.xsd | sed 's/^ name="\|^ type="[^:]\+:t\?\|"$$//g' > elements-vs-types-in-SDMN.xsd.txt
	xpath -q -e '//xs:element[@type]/@name|//xs:complexType/@name' ../../SDMN.xsd | sed 's/^ name="t\?\|"$$//g' | sort > elements-vs-types-in-SDMN.xsd-sorted.txt

properties: classes
	cat classes-from-SDMN.xsd.txt | xargs -I{} xpath -q -e '//xs:complexType[@name="t{}"]/@name|//xs:complexType[@name="t{}"]//xs:element/@name' ../../SDMN.xsd | sed 's/^ name="t\?\|"$$//g' | sort > properties-from-SDMN.xsd.txt
	xpath -q -e '//xs:attribute/@name' ../../SDMN.xsd | sed 's/^ name="\|"$$//g' | sort > attributes-in-SDMN.xsd.txt
	cat properties-from-SDMN.xsd.txt attributes-in-SDMN.xsd.txt | sort > properties-and-attributes-from-SDMN.xsd.txt
	cat classes-from-SDMN.xmi.txt | xargs -I{} xpath -q -e '//*[@xmi:type="uml:Class" and @name="{}"]/@name|//*[@xmi:type="uml:Class" and @name="{}"]/ownedAttribute[@xmi:type="uml:Property"]/@name' ../../SDMN.xmi | sed 's/^ name="\|"$$//g' | sort > properties-from-SDMN.xmi.txt
	meld properties-and-attributes-from-SDMN.xsd.txt properties-from-SDMN.xmi.txt

install:
	sudo apt install libxml-xpath-perl
