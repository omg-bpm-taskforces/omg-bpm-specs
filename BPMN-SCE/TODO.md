* extension attributes not allowed on sce:tSCEModelPackage
* expression & type language should be in sce:tSCEModelPackage
* extensionElements container missing => UML interpreted too literally
* rootElement should not be a namedElement => add namedElement as a subclass of root element
* name required for many root elements in BPMN but optional in SCE
* {https://www.omg.org/spec/SCE/20211108/MODEL}element from tSCEPackage should be defined as a top-level XSD element so that it can be used in substitution group (see: https://www.w3.org/TR/xmlschema-0/#SubsGroups although: https://www.kohsuke.org/xmlschema/XMLSchemaDOsAndDONTs.html#avoid_substitution)