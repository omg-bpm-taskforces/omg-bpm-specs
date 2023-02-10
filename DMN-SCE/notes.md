* DC and DI can be replaced without problem
* DMNEdge sourceElement and targetElement are redundant (can be derived from semantic part)

|       type      |      DMN     |      SCE     |
| --------------- | ------------ | ------------ |
| Edge source and target element | entity | attribute |
| Label text | entity | attribute |

* DMNStyle uses inconsistent case PascalCase for some properties, camelCase for most.
* element ref is an attribute in DMN but an entity in SCE