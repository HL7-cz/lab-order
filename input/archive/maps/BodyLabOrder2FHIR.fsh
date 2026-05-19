Instance: LabOrderBody2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/lab-order/ConceptMap/LabOrderBody2FHIR-cz"
* name = "LabOrderBody2FHIRcz"
* title = "CZ Body Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Lab Order Body Model to this guide mapping"""


* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderInformationCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/cz-serviceRequest"
* group[=].element[+].code = #Body.OrderInformation
* group[=].element[=].display = "A.2.1 and A.2.2 - Information about order"
* group[=].element[=].target.code = #Composition.section:serviceRequest					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "#Composition.OrderInformation.entry.ofType(CZ_ServiceRequest)"	
* group[=].element[+].code = #OrderInformation.orderDetail
* group[=].element[=].display = "A.2.1 - Order detail"
* group[=].element[=].target.code = #CZ_ServiceRequest
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.identifier
* group[=].element[=].display = "A.2.1.1 - Identifier of order detail"
* group[=].element[=].target.code = #CZ_ServiceRequest.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.dateTime
* group[=].element[=].display = "A.2.1.2 - Date and time of the order placement"
* group[=].element[=].target.code = #CZ_ServiceRequest.authoredOn
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.requestedExecdateTime
* group[=].element[=].display = "A.2.1.3 - Date and time of requested execution"
* group[=].element[=].target.code = #CZ_ServiceRequest.occurrenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.urgency
* group[=].element[=].display = "A.2.1.4 - Urgency of the order"
* group[=].element[=].target.code = #CZ_ServiceRequest.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderText
* group[=].element[=].display = "A.2.1.5 - Order text"
* group[=].element[=].target.code = #CZ_ServiceRequest.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderText
* group[=].element[=].display = "A.2.1.6 - Information for the patient"
* group[=].element[=].target.code = #CZ_ServiceRequest.patientInstruction
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderReason
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #CZ_ServiceRequest.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "#CZ_ServiceRequest.reasonReference.ofType(CZ_ConditionLab)"
* group[=].element[+].code = #OrderInformation.orderReason.problem
* group[=].element[=].display = "A.2.2.1 -  Problem / diagnosis / condition description"
* group[=].element[=].target.code = #CZ_ServiceRequest.reasonCode.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonCode
* group[=].element[=].display = "A.2.2.4 - Reason for ordering by code"
* group[=].element[=].target.code = #CZ_ServiceRequest.reasonCode.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.reasonText
* group[=].element[=].display = "A.2.2.6 - Reason for order by text"
* group[=].element[=].target.code = #CZ_ServiceRequest.reasonCode.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderInformationCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/cz-conditionLab"
* group[=].element[+].code = #OrderInformation.orderDetail.questionCode
* group[=].element[=].display = "A.2.2.2 - Clinical question in code form"
* group[=].element[=].target.code = #Composition.section:clinicalQuestion.entry.ofType(CZ_ConditionClinicalQuestion).code
* group[=].element[=].target.display = "In code form"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #OrderInformation.orderDetail.questionText
* group[=].element[=].display = "A.2.2.3 - A clinical question in text form"
* group[=].element[=].target.code = #Composition.section:clinicalQuestion.text
* group[=].element[=].target.display = "In text form"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalEventCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-encounter"
* group[=].element[+].code = #Body.ClinicalEvent
* group[=].element[=].display = "A.2.3 - Information about clinical event"
* group[=].element[=].target.code = #Composition.encounter					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.encounter.ofType(CZ_Encounter)"	
* group[=].element[+].code = #ClinicalEvent.identifier
* group[=].element[=].display = "A.2.3.1 - Identifier of clinical event"
* group[=].element[=].target.code = #CZ_Encounter.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #ClinicalEvent.type
* group[=].element[=].display = "A.2.3.2 - Type of clinical event"
* group[=].element[=].target.code = #Composition.type
* group[=].element[=].target.display = "FHIR Document Type Codes (LOINC) or Typ_KU (DASTA)"
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #ClinicalEvent.otherInformation
* group[=].element[=].display = "A.2.3.3 - Other information about clinical event"
* group[=].element[=].target.code = #CZ_Encounter.type.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/CoverageBodyCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Body.coverage
* group[=].element[=].display = "A.2.4 - Information about additional coverage"
* group[=].element[=].target.code = #Composition.section:coverage					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:coverage.entry.ofType(CZ_Coverage)"
* group[=].element[+].code = #Body.coverage.method
* group[=].element[=].display = "A.2.4.1 - Coverage method"
* group[=].element[=].target.code = #CZ_Coverage.type					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.informationPayor
* group[=].element[=].display = "A.2.4.2 - Information about Payor"
* group[=].element[=].target.code = #CZ_Coverage.payor					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[=].display = "A.2.4.3 - Coverage comment"
* group[=].element[=].target.code = #CZ_Coverage.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Body.coverage.comment
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabAppointmentCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/cz-appointment"
* group[=].element[+].code = #Body.Appointment
* group[=].element[=].display = "A.2.5 - Information about appointment"
* group[=].element[=].target.code = #Composition.section:appointment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[=].target.comment = "Composition.section:appointment.entry.ofType(CZ_Appointment)"	
* group[=].element[+].code = #Appointment.identifier
* group[=].element[=].display = "A.2.5.1 - Identifier of appointment"
* group[=].element[=].target.code = #CZ_Appointment.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.status
* group[=].element[=].display = "A.2.5.2 - Status of appointment"
* group[=].element[=].target.code = #CZ_Appointment.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.description
* group[=].element[=].display = "A.2.5.3 - Description of appointment"
* group[=].element[=].target.code = #CZ_Appointment.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Appointment.dateTime
* group[=].element[=].display = "A.2.5.4 - Date Time"
* group[=].element[=].target.code = #CZ_Appointment.created					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Appointment.examDuration
* group[=].element[=].display = "A.2.5.5 - Duration of appointment"
* group[=].element[=].target.code = #CZ_Appointment.minutesDuration					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.comment
* group[=].element[=].display = "A.2.5.6 - Comment about appointment"
* group[=].element[=].target.code = #CZ_Appointment.comment					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.patientInstruction
* group[=].element[=].display = "A.2.5.7 - Instructions for the patient"
* group[=].element[=].target.code = #CZ_Appointment.patientInstruction					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Appointment.address
* group[=].element[=].display = "A.2.5.7 - Address of the workplace"
* group[=].element[=].target.code = #CZ_Appointment.Location.address					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/SpecimenInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-specimen"
* group[=].element[+].code = #Body.SpecimenInformation
* group[=].element[=].display = "A.2.6 - Speciment information"
* group[=].element[=].target.code = #Composition.section:serviceRequest.specimen.ofType(CZ_Specimen)				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #SpecimenInformation.identifier
* group[=].element[=].display = "A.2.6.1 - Identifier of specimen"
* group[=].element[=].target.code = #CZ_Specimen.identifier
* group[=].element[=].target.display = "Identifier of specimen"
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SpecimenInformation.species	
* group[=].element[=].display = "A.2.6.2 - Species of animal patient"
* group[=].element[=].target.code = #CZ_Specimen.subject.species
* group[=].element[=].target.display = "Species of animal patient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.material	
* group[=].element[=].display = "A.2.6.3 - Type of material"
* group[=].element[=].target.code = #CZ_Specimen.type
* group[=].element[=].target.display = "Type of material"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collectionDate	
* group[=].element[=].display = "A.2.6.4 - Date and time of collection"
* group[=].element[=].target.code = #CZ_Specimen.collection.collectionDate
* group[=].element[=].target.display = "Date and time of collection"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.transportDate	
* group[=].element[=].display = "A.2.6.5 - Date and time of transport"
* group[=].element[=].target.code = #CZ_Specimen.collection.receivedTime
* group[=].element[=].target.display = "Date and time of commencement of transport of the sample to the laboratory"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.type
* group[=].element[=].display = "A.2.6.6 - Sample type"
* group[=].element[=].target.code = #CZ_Specimen.type
* group[=].element[=].target.display = "Entities collected for examination."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.anatomicLocation
* group[=].element[=].display = "A.2.6.7 - Anatomic location"
* group[=].element[=].target.code = #CZ_Specimen.collection.bodySite
* group[=].element[=].target.display = "Anatomic location (body location, laterality) where the material is collected"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.morphology
* group[=].element[=].display = "A.2.6.8 - Morphology"
* group[=].element[=].target.code = #CZ_Specimen.collection.extension:bodySite:bodyStructure.morphology
* group[=].element[=].target.display = "Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.instrument
* group[=].element[=].display = "A.2.6.9 - Instrument"
* group[=].element[=].target.code = #CZ_Specimen.subject
* group[=].element[=].target.display = "Device, instrument, physical object (drain, electrode, catheter, etc.)."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.procedure
* group[=].element[=].display = "A.2.6.10 - Collection procedure"
* group[=].element[=].target.code = #CZ_Specimen.collection.method
* group[=].element[=].target.display = "Sampling procedure - for cases where it is relevant to the results."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.sourceDevice
* group[=].element[=].display = "A.2.6.11 - Source Device"
* group[=].element[=].target.code = #CZ_Specimen.subject.type
* group[=].element[=].target.display = "If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Device or Location"
* group[=].element[+].code = #SpecimenInformation.samplingPoint
* group[=].element[=].display = "A.2.6.12 - Sampling point"
* group[=].element[=].target.code = #CZ_Specimen.subject.type
* group[=].element[=].target.display = "The area where the material was collected; refers to the environment, not the patient."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Location"
* group[=].element[+].code = #SpecimenInformation.Note
* group[=].element[=].display = "A.2.6.13 - Note"
* group[=].element[=].target.code = #CZ_Specimen.note
* group[=].element[=].target.display = "Note on the material in free text"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container
* group[=].element[=].display = "A.2.6.14 - Container"
* group[=].element[=].target.code = #CZ_Specimen.container
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.type
* group[=].element[=].display = "A.2.6.14.1 - Type"
* group[=].element[=].target.code = #CZ_Specimen.container.type
* group[=].element[=].target.display = "Type of sampling container - tube, sampling bag, etc. including chemical additives."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.count
* group[=].element[=].display = "A.2.6.14.2 - Specimen quantity"
* group[=].element[=].target.code = #CZ_Specimen.container.specimenQuantity
* group[=].element[=].target.display = "Specimen quantity within container."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.deviceId
* group[=].element[=].display = "A.2.6.14.3 - Device id"
* group[=].element[=].target.code = #CZ_Specimen.container.extension:Device:identifier
* group[=].element[=].target.display = "Unique machine-readable container identifier."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.container.label
* group[=].element[=].display = "A.2.6.14.4 - Label"
* group[=].element[=].target.code = #CZ_Specimen.collector.description
* group[=].element[=].target.display = "Human readable container identifier."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.additionalData
* group[=].element[=].display = "A.2.6.15 - Additional formalised sample data"
* group[=].element[=].target.code = #CZ_Specimen.collection
* group[=].element[=].target.display = "Additional formalised sample data"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.additionalData.date
* group[=].element[=].display = "A.2.6.15.1 - Date"
* group[=].element[=].target.code = #CZ_Specimen.collection.collectedDateTime
* group[=].element[=].target.display = "Date of discovery of the data, to be indicated if different from the date of the order."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.additionalData.value
* group[=].element[=].display = "A.2.6.15.3 - Data value"
* group[=].element[=].target[+].code = #CZ_Specimen.collection.collectedPeriod
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 08017 or 09056 (NCLPPOL - Čas odběru v minutách nebo sekundách)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #CZ_Specimen.collection.quantity
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 03142 (NCLPPOL - Objem)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #CZ_Specimen.condition
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 20293 (NCLPPOL - Stav materiálu)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #CZ_Specimen.note
* group[=].element[=].target[=].display = "Data value including unit of measurement."
* group[=].element[=].target[=].comment = "If #SpecimenInformation.additionalData.code = 20206 (NCLPPOL - Poznámky-specifikace-jiné)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector
* group[=].element[=].display = "A.2.6.16 - Collector"
* group[=].element[=].target.code = #CZ_Specimen.collector
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector.identifier
* group[=].element[=].display = "A.2.6.16.1 - Identifier of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.identifier
* group[=].element[=].target.display = "Identifier of the sample collector – this refers either to an internal identifier assigned by the healthcare provider or (preferably) a national ID of the healthcare professional, such as a license or registration number. If the sample is not collected by a healthcare professional but, for example, by the patient themselves, an appropriate personal identifier should be used instead."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector.name
* group[=].element[=].display = "A.2.6.16.2 - Name of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.name
* group[=].element[=].target.display = "Name of the sample collector"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector.contact
* group[=].element[=].display = "A.2.6.16.3 - Contact information of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.address
* group[=].element[=].target.display = "Contact information of the sample collector (address and telecommunication data)."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collector
* group[=].element[=].display = "A.2.6.16.4 - Organization of the sample collector"
* group[=].element[=].target.code = #CZ_Specimen.collector.organization
* group[=].element[=].target.display = "Organization of the sample collector (healthcare provider)."
* group[=].element[=].target.equivalence = #equivalent



// LAB SPECIFIC

* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-serviceRequest"
* group[=].element[+].code = #Body.clinicalInformation
* group[=].element[=].display = "A.2.7 - Clinical information (anamnesis)"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(Condition)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.clinicalInfoText
* group[=].element[=].display = "A.2.7.1 - Clinical information in free text"
* group[=].element[=].target.code = #Condition.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #clinicalInformation.clclinicalInfoFormalized
* group[=].element[=].display = "A.2.7.2 - Clinical information (medical history) formalized"
* group[=].element[=].target.code = #Condition.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.description
* group[=].element[=].display = "A.2.7.3 - Description of the problem/diagnosis/condition"
* group[=].element[=].target.code = #Condition.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-MedicationStatement"
* group[=].element[+].code = #clinicalInformation.medication
* group[=].element[=].display = "A.2.7.4 - Medications"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(CZ_MedicationStatement)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.vaccination
* group[=].element[=].display = "A.2.7.5 - Vaccinations"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(CZ_MedicationStatement)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-observation"
* group[=].element[+].code = #clinicalInformation.finding
* group[=].element[=].display = "A.2.7.6 - Physical findings"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(CZ_ObservationLab)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-allergyIntolerance"
* group[=].element[+].code = #clinicalInformation.urgentInformation
* group[=].element[=].display = "A.2.7.7 - Urgent information"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(CZ_AllergyIntolerance)	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.urgentInformation.allergies
* group[=].element[=].display = "A.2.7.7.1 - Allergies and intolerances"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(CZ_AllergyIntolerance)	
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #clinicalInformation.urgentInformation.warnings
* group[=].element[=].display = "A.2.7.7.2 - Warnings"
* group[=].element[=].target.code = #clinicalInformations.urgentInformation.warnings
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/ClinicalInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-observation"
* group[=].element[+].code = #clinicalInformation.additionalData
* group[=].element[=].display = "A.2.7.8 - Additional formalised data"
* group[=].element[=].target.code = #Composition.section:serviceRequest.supportingInfo.ofType(CZ_ObservationLab)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #clinicalInformation.additionalData.date
* group[=].element[=].display = "A.2.7.8.1 - Date"
* group[=].element[=].target.code = #CZ_ObservationLab.dateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #clinicalInformation.additionalData.code
* group[=].element[=].display = "A.2.7.8.2 - Code"
* group[=].element[=].target.code = #CZ_ObservationLab.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #clinicalInformation.additionalData.value 
* group[=].element[=].display = "A.2.7.8.3 - Data value"
* group[=].element[=].target.code = #CZ_ObservationLab.value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					

* group[+].source = "https://hl7.cz/fhir/lab-order/StructureDefinition/LabOrderBodySpecificCz"
* group[=].target = "https://hl7.cz/fhir/lab-order/StructureDefinition/cz-serviceRequest"
* group[=].element[+].code = #Body.examination
* group[=].element[=].display = "A.2.8 - Laboratory order data elements"
* group[=].element[=].target.code = #Composition.section:serviceRequest
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #examination.code
* group[=].element[=].display = "A.2.8.1 - Required examinations"
* group[=].element[=].target.code = #CZ_ServiceRequest.code.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.name
* group[=].element[=].display = "A.2.8.1.2 - Name of examination"
* group[=].element[=].target.code = #CZ_ServiceRequest.code.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.procedure
* group[=].element[=].display = "A.2.8.1.3 - Examination procedure"
* group[=].element[=].target.code = #CZ_ServiceRequest
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.accreditation
* group[=].element[=].display = "A.2.8.1.4 - Accreditation"
* group[=].element[=].target.code = #CZ_ServiceRequest.extension[accreditation]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.urgency
* group[=].element[=].display = "A.2.8.1.5 - Urgency"
* group[=].element[=].target.code = #CZ_ServiceRequest.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.note
* group[=].element[=].display = "A.2.8.1.6 - Note"
* group[=].element[=].target.code = #CZ_ServiceRequest.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #examination.clinicalEvent
* group[=].element[=].display = "A.2.8.1.7 - Clinical event (encounter)"
* group[=].element[=].target.code = #CZ_ServiceRequest.encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent