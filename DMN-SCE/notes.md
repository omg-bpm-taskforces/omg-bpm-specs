* DC and DI can be replaced without problem
* DMNEdge sourceElement and targetElement are redundant unless you don't use waypoints (can be derived from semantic part)

|       type      |      DMN     |      SCE     |
| --------------- | ------------ | ------------ |
| Edge source and target element | element | attribute |
| Label text | element | attribute |

* DMNStyle uses inconsistent case PascalCase for some properties, camelCase for most.
* Element Ref is an element in SCE while an attribute in DMN; the ref is also duplicated -> SCE should define general "elementRef"

* labelHorizontalAlignement -> typo in SCEDI.xsd


---

# 2023-04-07

scedi:tSCEStyle uses elements where DMN uses attributes (label alignment)

casing is different (some names are capitalized in SCEDI while lowercased in DMNDI and vice versa)