Instance: AppointmentExample
InstanceOf: CZ_AppointmentCore
Usage: #example
Title: "Example Appointment – Blood Sample Collection"
Description: "Appointment for laboratory sample collection"

* status = #booked
* description = "Odběr krve pro biochemické vyšetření"
* minutesDuration = 15
* created = "2025-06-28T11:30:00+02:00"
* patientInstruction = "Dostavte se nalačno, pouze s vodou. Neužívejte ranní léky bez konzultace s lékařem."
* comment = "Vyšetření zahrnuje krevní obraz a jaterní testy."
* start = "2025-07-03T07:15:00+02:00"
* end = "2025-07-03T07:30:00+02:00"

* participant[0].actor = Reference(LocationExample) "Odběrová místnost – Lab s.r.o."
* participant[=].required = #required
* participant[=].status = #accepted

Instance: LocationExample
InstanceOf: CZ_LocationCore
Usage: #example
Title: "Example Location – Collection Room"
Description: "Location for lab sample collection"

* status = #active
* name = "Odběrová místnost – Lab s.r.o."
* type[0].text = "Odběrové centrum"
* address.text = "Lab s.r.o., U Laboratoře 42, 123 45 Analytikov"
