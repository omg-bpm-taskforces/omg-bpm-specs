all: classes elements-vs-types properties

classes:
	xpath -q -e '//xs:complexType/@name' ../../SCE.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SCE.xsd.txt
	xpath -q -e '//xs:complexType/@name' ../../SCEDI.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-SCEDI.xsd.txt
	xpath -q -e '//xs:complexType/@name' ../../DI.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-DI.xsd.txt
	xpath -q -e '//xs:complexType/@name' ../../DC.xsd | sed 's/^ name="t\|"$$//g' | sort > classes-from-DC.xsd.txt
	xpath -q -e '//*[@xmi:type="uml:Class"]/@name' ../../SCE.xmi | sed 's/^ name="\|"$$//g' | sort > classes-from-SCE.xmi.txt
	xpath -q -e '//*[@xmi:type="uml:Class"]/@name' ../../SCEDI.xmi | sed 's/^ name="\|"$$//g' | sort > classes-from-SCEDI.xmi.txt
	xpath -q -e '//*[@xmi:type="uml:Class"]/@name' ../../SCE-Library.xmi | sed 's/^ name="\|"$$//g' | sort > classes-from-SCE-Library.xmi.txt
	meld classes-from-SCE.xsd.txt classes-from-SCE.xmi.txt
	cat classes-from-SCEDI.xsd.txt classes-from-DI.xsd.txt classes-from-DC.xsd.txt | sort > classes-from-SCEDI-DI-DC.xsd.txt
	meld classes-from-SCEDI-DI-DC.xsd.txt classes-from-SCEDI.xmi.txt

# compare element names with type names
elements-vs-types:
	for file in SCE SCEDI DI DC; do xpath -q -e '//xs:element[@type]/@name|//xs:element/@type' ../../$$file.xsd | sed 's/^ name="\|^ type="[^:]\+:t\?\|"$$//g' > elements-vs-types-in-$$file.xsd.txt; done
	for file in SCE SCEDI DI DC; do xpath -q -e '//xs:element[@type]/@name|//xs:complexType/@name' ../../$$file.xsd | sed 's/^ name="t\?\|"$$//g' | sort > elements-vs-types-in-$$file.xsd-sorted.txt; done

properties: classes
	for file in SCE SCEDI DI DC; do xpath -q -e '//xs:attribute/@name' ../../$$file.xsd | sed 's/^ name="\|"$$//g' | sort > attributes-in-$$file.xsd.txt; done
	cat classes-from-SCE.xsd.txt | xargs -I{} xpath -q -e '//xs:complexType[@name="t{}"]/@name|//xs:complexType[@name="t{}"]//xs:element/@name' ../../SCE.xsd | sed 's/^ name="t\?\|"$$//g' | sort > properties-from-SCE.xsd.txt
	cat properties-from-SCE.xsd.txt attributes-in-SCE.xsd.txt | sort > properties-and-attributes-from-SCE.xsd.txt
	cat classes-from-SCE.xmi.txt | xargs -I{} xpath -q -e '//*[@xmi:type="uml:Class" and @name="{}"]/@name|//*[@xmi:type="uml:Class" and @name="{}"]/ownedAttribute[@xmi:type="uml:Property"]/@name' ../../SCE.xmi | sed 's/^ name="\|"$$//g' | sort > properties-from-SCE.xmi.txt
	meld properties-and-attributes-from-SCE.xsd.txt properties-from-SCE.xmi.txt
	cat classes-from-SCEDI.xsd.txt | xargs -I{} xpath -q -e '//xs:complexType[@name="t{}"]/@name|//xs:complexType[@name="t{}"]//xs:element/@name' ../../SCEDI.xsd | sed 's/^ name="t\?\|"$$//g' | sort > properties-from-SCEDI.xsd.txt
	cat classes-from-DI.xsd.txt    | xargs -I{} xpath -q -e '//xs:complexType[@name="t{}"]/@name|//xs:complexType[@name="t{}"]//xs:element/@name' ../../DI.xsd    | sed 's/^ name="t\?\|"$$//g' | sort > properties-from-DI.xsd.txt
	cat classes-from-DC.xsd.txt    | xargs -I{} xpath -q -e '//xs:complexType[@name="t{}"]/@name|//xs:complexType[@name="t{}"]//xs:element/@name' ../../DC.xsd    | sed 's/^ name="t\?\|"$$//g' | sort > properties-from-DC.xsd.txt
	cat properties-from-*D*.xsd.txt attributes-in-*D*.xsd.txt | sort > properties-and-attributes-from-SCEDI.xsd.txt
	cat classes-from-SCEDI.xmi.txt | xargs -I{} xpath -q -e '//*[@xmi:type="uml:Class" and @name="{}"]/@name|//*[@xmi:type="uml:Class" and @name="{}"]/ownedAttribute[@xmi:type="uml:Property"]/@name' ../../SCEDI.xmi | sed 's/^ name="\|"$$//g' | sort > properties-from-SCEDI.xmi.txt
	meld properties-and-attributes-from-SCEDI.xsd.txt properties-from-SCEDI.xmi.txt

library:
	xpath -q -e '//*[@xmi:type="uml:InstanceSpecification"]/@name' ../../SCE-Library.xmi | sed 's/^ name="\|"$$//g' | sort > kinds-from-SCE-Library.xmi.txt
	xpath -q -e '//sce:relationshipKind/@name' ../../SCE-Library.xml | sed 's/^ name="\|"$$//g' | sort > kinds-from-SCE-Library.xml.txt
	meld kinds-from-SCE-Library.xmi.txt kinds-from-SCE-Library.xml.txt

install:
	sudo apt install libxml-xpath-perl
