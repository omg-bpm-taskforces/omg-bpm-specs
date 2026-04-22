<?xml version="1.0" encoding="UTF-8"?>
<!-- This example file is non-normative. -->
<sdmn:sharedDataModel id="HelloWorldDataModel"
    targetNamespace="https://example.org/hello-world/shared-data-model"
    xmlns="https://example.org/hello-world/shared-data-model"
    xmlns:sdmn="https://www.omg.org/spec/SDMN/"
    xmlns:sce="https://www.omg.org/spec/SCE/"
    xmlns:scedi="https://www.omg.org/spec/SCE/SCEDI/"
    xmlns:di="https://www.omg.org/spec/SCE/DI/" 
    xmlns:dc="https://www.omg.org/spec/SCE/DC/" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="
      https://www.omg.org/spec/SDMN/
      https://www.omg.org/spec/SDMN/20240210/SDMN.xsd
      https://www.omg.org/spec/SCE/
      https://www.omg.org/spec/SCE/20240210/SCE.xsd
      https://www.omg.org/spec/SCE/SCEDI/
      https://www.omg.org/spec/SCE/20240210/SCEDI.xsd
      https://www.omg.org/spec/SCE/DI/
      https://www.omg.org/spec/SCE/20240210/DI.xsd
      https://www.omg.org/spec/SCE/DC/
      https://www.omg.org/spec/SCE/20240210/DC.xsd
    ">
  <sce:import name="Hello_World_Item_Definitions" location="hello-world-item-definitions.sdmn"
      importType="https://www.omg.org/spec/SDMN/"
      namespace="https://example.org/hello-world/item-definitions"/>
  <!-- ... -->
</sdmn:sharedDataModel>
