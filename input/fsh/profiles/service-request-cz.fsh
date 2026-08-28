Profile: CZ_ServiceRequest
Parent: ServiceRequest
Id: cz-serviceRequest
Title: "ServiceRequest: Laboratory Order (CZ)"
Description: "ServiceRequest used to represent a Laboratory Order for the scope of the Czech national interoperability project."

* insert SetFmmandStatusRule ( 0, draft )

* identifier 1..
* category 1..

* authoredOn 1..
* occurrenceDateTime
* priority
* patientInstruction

* subject only Reference(CZ_PatientAnimal or CZ_PatientCore or Group or Device or CZ_LocationCore)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code 1..
* code from CZ_NclpLabpolVS (required)

* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or Device)
* performer.type from $sct-device-type
* requester only Reference(CZ_PractitionerRoleOrder)
//* requester only Reference(OrderPractitionerRoleCz or CZ_OrganizationCore or CZ_PatientCore or CZ_RelatedPersonCore or Device)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatementCore or CZ_ConditionCore or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationLab)
* reasonCode.coding ^slicing.discriminator[0].type = #value
* reasonCode.coding ^slicing.discriminator[0].path = "system"
* reasonCode.coding ^slicing.rules = #open
* reasonCode.coding contains
    mkn-10 0..1 and
    snomed 0..1 and
    orphacode 0..1
* reasonCode.coding[mkn-10] from $mkn10vs (preferred)
* reasonCode.coding[mkn-10].system = "https://uzis.cz/terminology/CodeSystem/mkn-10"
* reasonCode.coding[snomed] from $sct-condition-code (preferred)
* reasonCode.coding[snomed].system = "http://snomed.info/sct" (exactly)
* reasonCode.coding[snomed].version = "http://snomed.info/sct|http://snomed.info/sct/11000279109"
* reasonCode.coding[orphacode] from $orphanet-vs (preferred)
* reasonCode.coding[orphacode].system = "https://www.orpha.net" (exactly)

* extension contains AccreditationCz named accreditation 0..1
* extension[accreditation] ^short = "Request to use an accredited method"

* locationReference only Reference(CZ_LocationCore)