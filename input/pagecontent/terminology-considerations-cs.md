Následuje seznam kódovacích systémů a číselníků (vlastních i externích) použitých v této implementační příručce. Pole **Hodnota** odkazuje na kanonický URL daného systému / sady hodnot.

### Vlastní artefakty (CZ Lab Order)

| Artefakt | Typ | URL |
| -------- | --- | --- |
| [cz-typeClinicalEvent-cs](CodeSystem-cz-typeClinicalEvent-cs.html) | CodeSystem | `https://hl7.cz/fhir/lab-order/CodeSystem/cz-typeClinicalEvent-cs` |
| [cz-typeClinicalEvent-vs](ValueSet-cz-typeClinicalEvent-vs.html) | ValueSet | `https://hl7.cz/fhir/lab-order/ValueSet/cz-typeClinicalEvent-vs` |
| [cz-diagnosis-condition-vs](ValueSet-cz-diagnosis-condition-vs.html) | ValueSet (MKN-10 + Orphacode) | `https://hl7.cz/fhir/lab-order/ValueSet/cz-diagnosis-condition-vs` |
| [cz-nclp-labpol-vs (NČLP laboratorní položky)](ValueSet-cz-nclp-labpol-vs.html) | ValueSet | `https://hl7.cz/fhir/lab-order/ValueSet/cz-nclp-labpol-vs` |

### NČLP

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.2.7.9.2 | Další formalizované údaje – kód | NCLPPOL |
| A.2.8.1.1 | Kód vyšetření | NCLPPOL (`https://nclp.ncez.mzcr.cz/CodeSystem/nclppol`) |
| A.2.8.1.2 | Název vyšetření | NCLPPOL |
| A.2.8.1.3 | Metoda měření | NCLPPROC |

### MKN-10 / Orphacode

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.2.7.3 | Popis problému / diagnózy / stavu | `https://terminology.uzis.cz/CodeSystem/mkn-10_5`, `https://www.orphadata.com/` |

### ATC / DLP

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.2.7.4 | Medikace | ATC / DLP |

### SNOMED CT

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.2.2.2 | Klinická otázka kódem | `http://snomed.info/sct` ([clinical-findings](http://hl7.org/fhir/ValueSet/clinical-findings)) |
| A.2.2.4 | Důvod objednávky kódem | 243796009 ([condition-code](http://hl7.org/fhir/ValueSet/condition-code)) |
| A.2.6.6 | Typ vzorku | `http://snomed.info/sct` |
| A.2.6.7 | Anatomické umístění | `http://snomed.info/sct` ([body-site](http://hl7.org/fhir/ValueSet/body-site)) |
| A.2.6.8 | Morfologie | `http://snomed.info/sct` |
| A.2.6.10 | Procedura / metoda sběru | `http://snomed.info/sct` |
| A.2.6.14.1 | Kontejner – typ | `http://snomed.info/sct` |
| – | Kategorie ServiceRequest (laboratorní procedura) | 108252007 |

### LOINC

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.1.8.1 | Typ dokumentu (Composition.type) | `http://loinc.org` ([doc-typecodes](http://hl7.org/fhir/ValueSet/doc-typecodes)) |
| A.1.8.2 | Kategorie dokumentu | `http://loinc.org` ([document-classcodes](http://hl7.org/fhir/ValueSet/document-classcodes)) |
| – | Sekce: Relevantní laboratorní data | 30954-2 |
| – | Sekce: Důvod doporučení | 42349-1 |
| – | Sekce: Typ úhrady | 87520-3 |
| – | Sekce: Souhrn termínů | 56446-8 |
| – | Sekce: Klinické informace | 55752-0 |
| – | Sekce: Doplňující dokumentace | 77599-9 |

### UCUM

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| – | Měrné jednotky pro Observation.valueQuantity | `http://unitsofmeasure.org` |

### NRZP (Národní registr zdravotnických pracovníků)

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.1.2.3 | Povolání zdravotnického pracovníka | `https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani` (např. `L00` Lékař, `NL25` Odborný pracovník v laboratorních metodách) |

### DR-ZAR (Druhy zdravotnických zařízení)

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| – | Typ poskytovatele (Organization.type) | `https://ncez.mzcr.cz/fhir/CodeSystem/cz-drzar` |

### HL7 v2-0203

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.1.1.3 | Typ identifikátoru pacienta (např. PPN – cestovní pas) | `http://terminology.hl7.org/CodeSystem/v2-0203` |

### FHIR / HL7 ValueSets

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| A.1.1.5 | Státní občanství | [v3-Country2](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html) |
| A.1.1.6 | Úřední pohlaví | [v3-AdministrativeGender](https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html) |
| A.1.2.1 | Země v adrese | [v3-Country2](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html) |
| A.1.4.1 | Způsob úhrady | [coverage-kind](http://hl7.org/fhir/ValueSet/coverage-kind), [coverage-type](http://hl7.org/fhir/ValueSet/coverage-type) |
| A.1.8.3 | Stav žádanky | [request-status](https://hl7.org/fhir/valueset-request-status.html) |
| A.1.8.7 | Důvěrnost žádanky | [v3-Confidentiality](https://terminology.hl7.org/ValueSet-v3-Confidentiality.html) |
| A.2.1.4 | Urgentnost objednávky | [request-priority](https://hl7.org/fhir/valueset-request-priority.html) |
| A.2.4.1 | Způsob úhrady (Coverage.type) | [coverage-type](http://hl7.org/fhir/ValueSet/coverage-type) |
| A.2.5 | Stav termínu (Appointment.status) | [appointmentstatus](http://hl7.org/fhir/ValueSet/appointmentstatus) |
| A.2.6.10 | Typ provádějícího zařízení | [device-type](http://hl7.org/fhir/ValueSet/device-type) |
| A.2.7.1 | Kategorie problému (Condition.category) | [condition-category](http://hl7.org/fhir/ValueSet/condition-category) |
| A.2.7.3 | Kód problému (Condition.code) | [condition-code](http://hl7.org/fhir/ValueSet/condition-code) |

### MIME

| Kód položky | Popis položky | Hodnota |
| ----------- | ------------- | ------- |
| – | Typ obsahu přílohy (Attachment.contentType) | `urn:ietf:bcp:13` (např. `application/pdf`) |
