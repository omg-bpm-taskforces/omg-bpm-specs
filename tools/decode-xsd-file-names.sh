#!/bin/sh
cd ../xsd

git mv bmi-21-11-16.xsd BKPMN.xsd
git mv bmi-21-11-17.xsd BKPMN-Semantic.xsd
git mv bmi-21-11-18.xsd BKPMNDI.xsd
git mv bmi-21-11-38.xsd BHMN.xsd
git mv bmi-21-11-39.xsd BHMNDI.xsd
git mv bmi-21-11-06.xsd SDMN.xsd
git mv bmi-21-11-07.xsd SDMN-Semantic.xsd
git mv bmi-21-11-08.xsd SDMNDI.xsd
git mv bmi-21-11-25.xsd SCE.xsd
git mv bmi-21-11-26.xsd SCE-Semantic.xsd
git mv bmi-21-11-27.xsd SCEDI.xsd
git mv bmi-21-11-29.xsd DI.xsd
git mv bmi-21-11-30.xsd DC.xsd
git mv bmi-21-11-09.xml SDMN-Library.xml
git mv bmi-21-11-28.xml SCE-Library.xml
git mv bmi-21-11-19.xml BKPMN-Library.xml

sed -i 's/bmi-21-11-16.xsd/BKPMN.xsd/g'          *.xsd *.xml
sed -i 's/bmi-21-11-17.xsd/BKPMN-Semantic.xsd/g' *.xsd *.xml
sed -i 's/bmi-21-11-18.xsd/BKPMNDI.xsd/g'        *.xsd *.xml
sed -i 's/bmi-21-11-38.xsd/BHMN.xsd/g'           *.xsd *.xml
sed -i 's/bmi-21-11-39.xsd/BHMNDI.xsd/g'         *.xsd *.xml
sed -i 's/bmi-21-11-06.xsd/SDMN.xsd/g'           *.xsd *.xml
sed -i 's/bmi-21-11-07.xsd/SDMN-Semantic.xsd/g'  *.xsd *.xml
sed -i 's/bmi-21-11-08.xsd/SDMNDI.xsd/g'         *.xsd *.xml
sed -i 's/bmi-21-11-25.xsd/SCE.xsd/g'            *.xsd *.xml
sed -i 's/bmi-21-11-26.xsd/SCE-Semantic.xsd/g'   *.xsd *.xml
sed -i 's/bmi-21-11-27.xsd/SCEDI.xsd/g'          *.xsd *.xml
sed -i 's/bmi-21-11-29.xsd/DI.xsd/g'             *.xsd *.xml
sed -i 's/bmi-21-11-30.xsd/DC.xsd/g'             *.xsd *.xml
sed -i 's/bmi-21-11-09.xml/SDMN-Library.xml/g'   *.xsd *.xml
sed -i 's/bmi-21-11-28.xml/SCE-Library.xml/g'    *.xsd *.xml
sed -i 's/bmi-21-11-19.xml/BKPMN-Library.xml/g'  *.xsd *.xml
