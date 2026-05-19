//==========================
// PROFILE
//==========================
Profile: CZ_CompositionLabOrder
Parent: Composition
Id: cz-CompositionLabOrder
Title: "Composition: Laboratory Order (CZ)"
Description: "Clinical document used to represent a Laboratory Order for the scope of this guide."
* ^purpose = "Laboratory order bundle is an electronic health record extract containing order of laboratory examination for subject of care, comprising at least the required elements of the lab dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Laboratory Order Composition"
* . ^definition = "Laboratory Order Composition. \r\n\r\n A composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule ( 0, draft )

* meta
  * security 0..* MS

* identifier
  * ^short = "Order identifier"
  * ^definition = "Identifiers assigned to this Laboratory Order by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the OrderInformation.identifier, if at least one exists"

* status
  * ^short = "Status of the Order"
  * ^comment = ""

* subject 1..1 
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group or CZ_LocationCore or Device or CZ_MedicalDevice)

* custodian 
* custodian only Reference(CZ_OrganizationCore)
  * ^short = "Organization that manages the Laboratory Order"

* encounter 
* encounter only Reference(CZ_Encounter)
  * ^short = "Context that defines the Laboratory Order"
//  * insert SetPopulateIfKnown

* author
* author only Reference(CZ_PractitionerCore or CZ_DeviceObserver or CZ_PractitionerRoleCore)
  * ^short = "Who and/or what authored the Laboratory order"

* date
  * ^short = "Date the order was created."

* type from CZ_TypeClinicalEventVs

* category from $DocumentClassValueSet

* extension contains DocumentPresentedForm named presentedForm 0..*
* extension[presentedForm] ^short = "Presented form"
* extension[presentedForm].valueAttachment
  * contentType
    * ^example[0].label = "pdf"
    * ^example[0].valueCode  = $mime#application/pdf
  * data ^short = "B64 in-line data"
  * url ^short = "URL of the document"

* extension contains
    $information-recipient-url  named informationRecipient 0..*
* extension[informationRecipient].valueReference only Reference(CZ_PractitionerCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerRoleCore or CZ_OrganizationCore)

* section 1..
* obeys text-or-section

* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Laboratory Order"
* section ^definition = "The root of the sections that make up the Laboratory Order composition."
* section.author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or Device or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)


* section contains
    serviceRequest 1..* and
    clinicalQuestion 1..* and
    coverage 0..* and
    appointment 0..1 and
    supportingInformation 0..1 and
    attachments 0..*

///////////////////////////////// ORDER INFORMATION SECTION ///////////////////////////////////////
* section[serviceRequest]
  * ^short = "Order Information"
  * ^definition = "This section holds information related to the order for the laboratory study."
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#30954-2 	"Relevant diagnostic tests/laboratory data note"
  * entry 0..
  * entry only Reference(CZ_ServiceRequest) 
* section[serviceRequest].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or Device or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

///////////////////////////////// Clinical question SECTION ///////////////////////////////////////
* section[clinicalQuestion]
  * ^short = "Clinical question"
  * ^definition = "This section holds information about the clinical question that the laboratory method is intended to answer."
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#42349-1 	"Reason for referral (narrative)"
  * entry 1..
  * entry only Reference(CZ_ConditionClinicalQuestion) 
* section[clinicalQuestion].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or Device or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

/////////////////////////////////// COVERAGE SECTION ////////////////////////////////////////////
* section[coverage]
  * ^short = "Coverage type"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#87520-3 "Coverage type"
  * entry 0..
  * entry only Reference(CZ_Coverage)
* section[coverage].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or Device or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

/////////////////////////////////// APPOINTMENT SECTION /////////////////////////////////////////
* section[appointment]
  * ^short = "Appointment"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#56446-8 "Appointment summary Document"
  * entry 0..
  * entry only Reference(CZ_Appointment)
* section[appointment].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or Device or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

 /////////////////////////////////// SUPPORTING INFORMATION SECTION /////////////////////////////////////////
* section[supportingInformation]
  * ^short = "Supporting information"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#55752-0 "Clinical information"
  * entry 0..
  * entry only Reference(CZ_MedicationStatement or Condition)


 /////////////////////////////////////// ATTACHMENTS SECTION /////////////////////////////////////////
// -------------------------------------------------------------
* section[attachments]
  * ^short = "Library of attachments"
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#77599-9 "Additional documentation"
  * entry 0..
  * entry only Reference(CZ_Attachment)
* section[attachments].author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or Device or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

/// ========= INVARIANTS =========

Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error