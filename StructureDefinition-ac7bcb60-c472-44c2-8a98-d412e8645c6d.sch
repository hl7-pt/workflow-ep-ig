<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Practitioner
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Practitioner</sch:title>
    <sch:rule context="f:Practitioner">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/StructureDefinition/Nationality']) &lt;= 1">extension with URL = 'https://hl7.pt/fhir/StructureDefinition/Nationality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/StructureDefinition/Death']) &lt;= 1">extension with URL = 'https://hl7.pt/fhir/StructureDefinition/Death': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:photo) &lt;= 0">photo: maximum cardinality of 'photo' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:meta</sch:title>
    <sch:rule context="f:Practitioner/f:meta">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 0">versionId: maximum cardinality of 'versionId' is 0</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 0">source: maximum cardinality of 'source' is 0</sch:assert>
      <sch:assert test="count(f:profile) &lt;= 0">profile: maximum cardinality of 'profile' is 0</sch:assert>
      <sch:assert test="count(f:security) &lt;= 0">security: maximum cardinality of 'security' is 0</sch:assert>
      <sch:assert test="count(f:tag) &lt;= 0">tag: maximum cardinality of 'tag' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:identifier</sch:title>
    <sch:rule context="f:Practitioner/f:identifier">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:identifier/f:type</sch:title>
    <sch:rule context="f:Practitioner/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:Practitioner/f:identifier/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:identifier/f:period</sch:title>
    <sch:rule context="f:Practitioner/f:identifier/f:period">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:identifier/f:assigner</sch:title>
    <sch:rule context="f:Practitioner/f:identifier/f:assigner">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 0">reference: maximum cardinality of 'reference' is 0</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:name</sch:title>
    <sch:rule context="f:Practitioner/f:name">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:family) &lt;= 1">family: maximum cardinality of 'family' is 1</sch:assert>
      <sch:assert test="count(f:suffix) &lt;= 0">suffix: maximum cardinality of 'suffix' is 0</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:name/f:given</sch:title>
    <sch:rule context="f:Practitioner/f:name/f:given">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:telecom</sch:title>
    <sch:rule context="f:Practitioner/f:telecom">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address</sch:title>
    <sch:rule context="f:Practitioner/f:address">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/StructureDefinition/Address']) &lt;= 1">extension with URL = 'https://hl7.pt/fhir/StructureDefinition/Address': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address/f:period</sch:title>
    <sch:rule context="f:Practitioner/f:address/f:period">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:qualification</sch:title>
    <sch:rule context="f:Practitioner/f:qualification">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/StructureDefinition/Proficiency']) &lt;= 1">extension with URL = 'https://hl7.pt/fhir/StructureDefinition/Proficiency': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:issuer) &lt;= 0">issuer: maximum cardinality of 'issuer' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:qualification/f:code</sch:title>
    <sch:rule context="f:Practitioner/f:qualification/f:code">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:qualification/f:code/f:coding</sch:title>
    <sch:rule context="f:Practitioner/f:qualification/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:qualification/f:period</sch:title>
    <sch:rule context="f:Practitioner/f:qualification/f:period">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:communication</sch:title>
    <sch:rule context="f:Practitioner/f:communication">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.pt/fhir/StructureDefinition/NativeLanguage']) &lt;= 1">extension with URL = 'https://hl7.pt/fhir/StructureDefinition/NativeLanguage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:communication/f:coding</sch:title>
    <sch:rule context="f:Practitioner/f:communication/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
