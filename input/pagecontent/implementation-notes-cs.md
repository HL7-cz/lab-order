
Na následující stránce naleznete poznámky k implementaci laboratorní žádanky. Týkají se tvorby kompozice (`CZ_CompositionLabOrder`), bundle (`BundleLabOrderCz`) a naplnění souvisejících profilů odpovídajícími daty.

### Přehled

```mermaid
classDiagram
  direction LR
  class BundleLabOrderCz{
    <<Bundle>>
  }
  BundleLabOrderCz *-- "1" CZ_CompositionLabOrder
  BundleLabOrderCz *-- "1" CZ_PatientCore
  BundleLabOrderCz *-- "0..*" CZ_ServiceRequest
  BundleLabOrderCz *-- "1..*" CZ_ConditionClinicalQuestion
  BundleLabOrderCz *-- "0..*" CZ_Coverage
  BundleLabOrderCz *-- "0..*" CZ_Encounter
  BundleLabOrderCz *-- "0..1" CZ_Appointment
  BundleLabOrderCz *-- "0..*" CZ_Specimen
  BundleLabOrderCz *-- "0..*" CZ_PractitionerCore
  BundleLabOrderCz *-- "0..*" CZ_PractitionerRoleCore
  BundleLabOrderCz *-- "0..*" CZ_OrganizationCore
  BundleLabOrderCz *-- "0..*" CZ_MedicationStatement
  BundleLabOrderCz *-- "0..*" CZ_ConditionLab
  BundleLabOrderCz *-- "0..*" CZ_AllergyIntolerance
  BundleLabOrderCz *-- "0..*" CZ_ObservationLab
  BundleLabOrderCz *-- "0..*" CZ_Attachment

  CZ_CompositionLabOrder --> CZ_ServiceRequest: section[serviceRequest]
  CZ_CompositionLabOrder --> CZ_ConditionClinicalQuestion: section[clinicalQuestion]
  CZ_CompositionLabOrder --> CZ_Coverage: section[coverage]
  CZ_CompositionLabOrder --> CZ_Appointment: section[appointment]
  CZ_CompositionLabOrder --> CZ_MedicationStatement: section[supportingInformation]
  CZ_CompositionLabOrder --> CZ_Attachment: section[attachments]
  CZ_CompositionLabOrder --> CZ_PractitionerRoleCore: author
  CZ_CompositionLabOrder --> CZ_Encounter: encounter
  CZ_CompositionLabOrder --> CZ_OrganizationCore: custodian
  CZ_CompositionLabOrder --> CZ_PatientCore: subject

  CZ_ServiceRequest --> CZ_Specimen: specimen
  CZ_ServiceRequest --> CZ_Coverage: insurance
  CZ_ServiceRequest --> CZ_PractitionerRoleCore: requester
  CZ_ServiceRequest --> CZ_PractitionerRoleCore: performer
```

Laboratorní žádanka je reprezentována jako FHIR Bundle typu `document`, který jako první entry obsahuje `CZ_CompositionLabOrder` a dále všechny zdroje, na které kompozice (a její sekce) odkazují (viz [$document operation](https://www.hl7.org/fhir/composition-operation-document.html)).

### Popis obsahu CZ_CompositionLabOrder

{% include composition-intro-cs.md %}
