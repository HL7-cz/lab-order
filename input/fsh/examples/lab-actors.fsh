// Pacient
Instance: Zyrgana
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Fiktivní pacientka pro účel příkladu"

//* contained[+] = RegisteringProviderExample
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rcis"
  * value = "8203171234"
  * use = #official
* identifier[+]
  * system = "https://ncez.mzcr.cz/fhir/sid/rid"
  * value = "1122334455"
* identifier[+]
  * system = "http://hl7.org/fhir/sid/passport-CZE"
  * value = "98765432"
  * use = #official
  * type = $v2-0203#PPN
* identifier[+]
  * system = "http://hl7.org/fhir/sid/passport-FRA"
  * value = "12345678"
  * use = #official
  * type = $v2-0203#PPN

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Prouzdalová"
* name.given = "Zyrgana"
* telecom.system = #phone
* telecom.value = "+420777123987"
* telecom.use = #mobile
* gender = #female
* birthDate = "1982-03-17"
* address[+]
  * use = #home
  * type = #physical
  * text = "U Roury 42, 999 99, Počernice n. Blátem"
  * line[+] = "U Roury 42"
    * extension[streetName].valueString = "U Roury"
    * extension[houseNumber].valueString = "42"
  * city = "Počernice nad Blátem"
  * postalCode = "99999"
  * country = "Česko"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

* communication[+].language = urn:ietf:bcp:47#cs
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#fr

* generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/nrzp"
* generalPractitioner.identifier.value = "876543210"
* generalPractitioner.display = "MUDr. Kvido Polštář"

//* extension[registeringProvider][+].extension[value].valueReference = Reference(RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#700232004 "Všeobecné lékařské služby"
//* extension[registeringProvider][+].extension[value].valueReference = Reference(RegisteringProviderExample)
//* extension[registeringProvider][=].extension[category].valueCodeableConcept = $sct#408443003 "Léčba bolesti"

// Registrující lékař
Instance: RegisteringProviderExample
InstanceOf: CZ_OrganizationCore
Title: "Organization: Registering healthcare provider example"
Description: "Fiktivní registrující poskytovatel zdravotní péče"
Usage: #example

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "999888777"
* type[+] = $drzar#320 "Samost. ordinace všeob. prakt. lékaře"
* name = "Ordinace MUDr. Kvida Polštáře"


// Nemocnice s laboratoří
Instance: NemocniceZlabekDolni
InstanceOf: CZ_OrganizationCore
Title: "Nemocnice Žlábek Dolní"
Description: "Zdravotnické zařízení, které žádá laboratorní vyšetření."
Usage: #example

* id = "bc2b8a3e-999a-4f10-91ce-1dc12fa0e123"

* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* identifier[=].value = "11223344"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "ZD112233"

* active = true
* name = "Nemocnice Žlábek Dolní"

* telecom[+].system = #phone
* telecom[=].value = "+420510987654"

* telecom[+].system = #email
* telecom[=].value = "ordinace@zlabekdolni.cz"

* address[+].use = #work
* address[=].line = "Blatouchová 77"
* address[=].city = "Žlábek Dolní"
* address[=].postalCode = "54321"
* address[=].country = "Česko"
  * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"


// Žádající lékař
Instance: practitionerVycichlo
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Virtuální lékař MUDr. Erazim Vyčichlo"
* id = "d12345af-8888-4001-bcde-1234567890ab"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "135792468"
* name.use = #usual
* name.prefix = "MUDr."
* name.given = "Erazim"
* name.family = "Vyčichlo"
* gender = #male


Instance: practitionerRoleVycichlo
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Role MUDr. Erazima Vyčichla (žádající lékař)"
* id = "99988877-aaaa-4000-bbbb-cceeddccbbaa"
* practitioner = Reference(practitionerVycichlo)
* organization = Reference(NemocniceZlabekDolni)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani#L00 "Lékař"
* active = true
* telecom[+].system = #email
* telecom[=].value = "erazim.vycichlo@zlabekdolni.cz"


Instance: practitionerSejdlova
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Virtuální laborantka Mgr. Kvilda Šejdlová"
* id = "fab321ab-7777-4444-cccc-abcdefabcdef"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "192837465"
* name.use = #usual
* name.prefix = "Mgr."
* name.given = "Kvilda"
* name.family = "Šejdlová"
* gender = #female


Instance: practitionerRoleSejdlova
InstanceOf: CZ_PractitionerRoleCore
Usage: #example
Description: "Role Mgr. Kvildy Šejdlové (provádějící laborant)"
* id = "aabbccdd-2222-3333-dddd-112233445566"
* practitioner = Reference(practitionerSejdlova)
* organization = Reference(NemocniceZlabekDolni) // Nemocnice Horní Dolní (laboratoř)
* code[NRZP_POVOLANI] = https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani#NL25 "Odborný pracovník v laboratorních metodách a v přípravě léčivých přípravků"
* active = true
* telecom[+].system = #email
* telecom[=].value = "kvilda.sejdlova@horni-dolni.eu"