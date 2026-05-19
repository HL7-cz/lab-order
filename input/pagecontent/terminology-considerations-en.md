The following is a list of code systems and value sets (own and external) used in this implementation guide. The **Value** column points to the canonical URL of the code system or value set.

### Own artefacts (CZ Lab Order)

| Artefact | Type | URL |
| -------- | ---- | --- |
| [cz-typeClinicalEvent-cs](CodeSystem-cz-typeClinicalEvent-cs.html) | CodeSystem | `https://hl7.cz/fhir/lab-order/CodeSystem/cz-typeClinicalEvent-cs` |
| [cz-typeClinicalEvent-vs](ValueSet-cz-typeClinicalEvent-vs.html) | ValueSet | `https://hl7.cz/fhir/lab-order/ValueSet/cz-typeClinicalEvent-vs` |
| [cz-diagnosis-condition-vs](ValueSet-cz-diagnosis-condition-vs.html) | ValueSet (ICD-10 + Orphacode) | `https://hl7.cz/fhir/lab-order/ValueSet/cz-diagnosis-condition-vs` |
| [cz-nclp-labpol-vs (NČLP laboratory items)](ValueSet-cz-nclp-labpol-vs.html) | ValueSet | `https://hl7.cz/fhir/lab-order/ValueSet/cz-nclp-labpol-vs` |

### NČLP

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.2.7.9.2 | Additional formalized data – code | NCLPPOL |
| A.2.8.1.1 | Examination code | NCLPPOL (`https://nclp.ncez.mzcr.cz/CodeSystem/nclppol`) |
| A.2.8.1.2 | Examination name | NCLPPOL |
| A.2.8.1.3 | Examination procedure | NCLPPROC |

### ICD-10 / Orphacode

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.2.7.3 | Problem / diagnosis / condition description | `https://terminology.uzis.cz/CodeSystem/mkn-10_5`, `https://www.orphadata.com/` |

### ATC / DLP

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.2.7.4 | Medication | ATC / DLP |

### SNOMED CT

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.2.2.2 | Clinical question by code | `http://snomed.info/sct` ([clinical-findings](http://hl7.org/fhir/ValueSet/clinical-findings)) |
| A.2.2.4 | Reason for ordering by code | 243796009 ([condition-code](http://hl7.org/fhir/ValueSet/condition-code)) |
| A.2.6.6 | Specimen type | `http://snomed.info/sct` |
| A.2.6.7 | Anatomic location | `http://snomed.info/sct` ([body-site](http://hl7.org/fhir/ValueSet/body-site)) |
| A.2.6.8 | Morphology | `http://snomed.info/sct` |
| A.2.6.10 | Collection procedure | `http://snomed.info/sct` |
| A.2.6.14.1 | Container type | `http://snomed.info/sct` |
| – | ServiceRequest category (laboratory procedure) | 108252007 |

### LOINC

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.1.8.1 | Document type (Composition.type) | `http://loinc.org` ([doc-typecodes](http://hl7.org/fhir/ValueSet/doc-typecodes)) |
| A.1.8.2 | Document category | `http://loinc.org` ([document-classcodes](http://hl7.org/fhir/ValueSet/document-classcodes)) |
| – | Section: Relevant laboratory data | 30954-2 |
| – | Section: Reason for referral | 42349-1 |
| – | Section: Coverage type | 87520-3 |
| – | Section: Appointment summary | 56446-8 |
| – | Section: Clinical information | 55752-0 |
| – | Section: Additional documentation | 77599-9 |

### UCUM

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| – | Units of measure for Observation.valueQuantity | `http://unitsofmeasure.org` |

### NRZP (National Register of Healthcare Professionals)

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.1.2.3 | Healthcare professional occupation | `https://ncez.mzcr.cz/terminology/CodeSystem/nrzp-povolani` (e.g. `L00` Physician, `NL25` Laboratory specialist) |

### DR-ZAR (Types of healthcare facilities)

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| – | Provider type (Organization.type) | `https://ncez.mzcr.cz/fhir/CodeSystem/cz-drzar` |

### HL7 v2-0203

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.1.1.3 | Patient identifier type (e.g. PPN – passport) | `http://terminology.hl7.org/CodeSystem/v2-0203` |

### FHIR / HL7 ValueSets

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| A.1.1.5 | Nationality | [v3-Country2](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html) |
| A.1.1.6 | Administrative gender | [v3-AdministrativeGender](https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html) |
| A.1.2.1 | Address country | [v3-Country2](https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html) |
| A.1.4.1 | Method of coverage | [coverage-kind](http://hl7.org/fhir/ValueSet/coverage-kind), [coverage-type](http://hl7.org/fhir/ValueSet/coverage-type) |
| A.1.8.3 | Document status | [request-status](https://hl7.org/fhir/valueset-request-status.html) |
| A.1.8.7 | Confidentiality | [v3-Confidentiality](https://terminology.hl7.org/ValueSet-v3-Confidentiality.html) |
| A.2.1.4 | Order priority | [request-priority](https://hl7.org/fhir/valueset-request-priority.html) |
| A.2.4.1 | Coverage type (Coverage.type) | [coverage-type](http://hl7.org/fhir/ValueSet/coverage-type) |
| A.2.5 | Appointment status | [appointmentstatus](http://hl7.org/fhir/ValueSet/appointmentstatus) |
| A.2.6.10 | Performer device type | [device-type](http://hl7.org/fhir/ValueSet/device-type) |
| A.2.7.1 | Condition category | [condition-category](http://hl7.org/fhir/ValueSet/condition-category) |
| A.2.7.3 | Condition code | [condition-code](http://hl7.org/fhir/ValueSet/condition-code) |

### MIME

| Item code | Item description | Value |
| --------- | ---------------- | ----- |
| – | Attachment content type (Attachment.contentType) | `urn:ietf:bcp:13` (e.g. `application/pdf`) |
