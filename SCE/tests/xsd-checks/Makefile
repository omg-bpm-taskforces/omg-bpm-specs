all: classes elements-vs-types attributes

classes:
	xpath -q -e '//xs:complexType/@name' ../../SCE.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SCE.xsd.txt
	xpath -q -e '//xs:complexType/@name' ../../SCEDI.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SCEDI.xsd.txt
	xpath -q -e '//xs:complexType/@name' ../../DI.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-DI.xsd.txt
	xpath -q -e '//xs:complexType/@name' ../../DC.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-DC.xsd.txt

# compare element names with type names
elements-vs-types:
	for file in SCE SCEDI DI DC; do xpath -q -e '//xs:element[@type]/@name|//xs:element/@type' ../../$$file.xsd | sed 's/^ name="\|^ type="[^:]\+:t\?\|"$$//g' > elements-vs-types-in-$$file.xsd.txt; done
	for file in SCE SCEDI DI DC; do xpath -q -e '//xs:element[@type]/@name|//xs:complexType/@name' ../../$$file.xsd | sed 's/^ name="t\?\|"$$//g' | sort > elements-vs-types-in-$$file.xsd-sorted.txt; done

attributes:
	for file in SCE SCEDI DI DC; do xpath -q -e '//xs:attribute/@name' ../../$$file.xsd | sed 's/^ name="\|"$$//g' | sort > attributes-in-$$file.xsd.txt; done

install:
	sudo apt install libxml-xpath-perl
