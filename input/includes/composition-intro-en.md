### Sections and content

The document is divided into a set of mandatory and optional sections. If no data is available for a mandatory section, the justification can be expressed in `composition.section.emptyReason`.

### Document structure

The Laboratory Order holds the following sections in this order:

#### Laboratory Order Header

General information about the order. Most of the information elements in this part of the document overlap with other clinical documents. The document header includes information about the patient, source organization, author (indicating physician), intended performer of the examination, and the custodian of the document.

**Clinical Encounter**

This profile allows linking the order to a specific clinical encounter, such as an outpatient visit or hospitalization during which the order was created.

#### Body of the Laboratory Order

**Requested examinations (ServiceRequest)**

This mandatory section contains the list of individual requested laboratory examinations. Each examination is expressed as one `CZ_ServiceRequest` resource. Mandatory elements include the order identifier, category, authored date (`authoredOn`) and the code of the requested examination (`code`) taken from the national laboratory nomenclature (NČLP). Optionally, the priority of the examination (routine, urgent, stat, ASAP), the requested time of execution (`occurrenceDateTime`) and free-text instructions for the patient or laboratory (`patientInstruction`, `note`) may be supplied. When a specific specimen is associated with the examination, it is linked via `specimen`.

**Coverage**

This section allows specification of the way the order is paid for if it differs from the standard public health insurance coverage — for example a self-paying patient, co-payment, a different insurance company, or a specific program. While the section is required to be present, it does not have to be populated; in that case the order is assumed to be covered by the insurance indicated in the header.

**Appointment**

Optional section that may carry information about the agreed date and place for the planned biological material collection. It is typically used to inform the patient about when and where to attend, and the laboratory about the expected arrival of the specimen.

**Supporting information**

Optional section that may attach clinically relevant information influencing result interpretation — for example current medication (`CZ_MedicationStatement`) or already known conditions and findings (`Condition`). This information helps the laboratory to correctly evaluate the requested examinations.

**Attachments**

Optional section that allows any additional documents to be attached — such as outpatient reports, discharge summaries, previous results, or data provided by the patient (in digital form or as a scan). It serves to supplement the clinical context of the order.
