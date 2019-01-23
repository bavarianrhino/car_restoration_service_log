# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
Vehicle.destroy_all
Service.destroy_all
Part.destroy_all
VehicleServicePart.destroy_all
Vendor.destroy_all

ryan = Owner.find_or_create_by({name: "Ryan Riesenberger", street: "105 Northampton", city: "Canton", state: "GA", zip: 30115, phone_number: "619-508-0510", email: "rjriesenberger@gmail.com", username: "bavarianrhino", password_digest: "1234"})
sunny = Owner.find_or_create_by({name: "Sunny Sharma", street: "9421 Peachtree Dr.", city: "Duluth", state: "GA", zip: 30110, phone_number: "678-390-0000", email: "ssharma@gmail.com", username: "sunny", password_digest: "1234"})
# create_table "owners", force: :cascade do |t|
#   t.string "name"
#   t.string "street"
#   t.string "city"
#   t.string "state"
#   t.integer "zip"
#   t.string "phone_number"
#   t.string "email"
# end



bmw = Vehicle.find_or_create_by({make: "BMW", model: "540i", year: 1995, vin: "1VWAP7A31EC017152", engine: "M60B40", car_classification: "4door", color: "black", owner_id: 1})
vw = Vehicle.find_or_create_by({make: "Volkswagen", model: "Transporter", year: 1974, vin: "1D7RV1GT2BS542129", engine: "Type 4 1700cc", car_classification: "Bus", color: "white & green", owner_id: 1})
audi = Vehicle.find_or_create_by({make: "Saab", model: "A4", year: 2001, vin: "19UUA66215A062598", engine: "2.8L V6", car_classification: "Wagen", color: "white", owner_id: 2})
volvo = Vehicle.find_or_create_by({make: "Volvo", model: "S70", year: 2002, vin: "1G4PP5SK6E4195118", engine: "2.3L IL6", car_classification: "4door", color: "white", owner_id: 2})
# t.string "make"
# t.string "model"
# t.integer "year"
# t.string "vin"
# t.string "engine"
# t.string "car_class"
# t.string "color"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "owner_id"



bmw_service1 = Service.find_or_create_by({date: "01/20/2019", work_description: "Changed oil and filter", car_miles: 123100, work_hours: 2})
bmw_service2 = Service.find_or_create_by({date: "03/13/2019", work_description: "Changed rear brake pads", car_miles: 126130, work_hours: 4})
vw_service1 = Service.find_or_create_by({date: "01/09/2019", work_description: "Replaced leaky drum cylinder", car_miles: 10120, work_hours: 5})
vw_service2 = Service.find_or_create_by({date: "01/20/2019", work_description: "Replaced fuel regulator", car_miles: 10320, work_hours: 4})
audi_service1 = Service.find_or_create_by({date: "01/12/2019", work_description: "Replaced head gaskets", car_miles: 45678, work_hours: 6})
audi_service2 = Service.find_or_create_by({date: "02/28/2019", work_description: "Changed oil and filter", car_miles: 47891, work_hours: 1})
volvo_service1 = Service.find_or_create_by({date: "01/15/2019", work_description: "Replaced rear window regulator", car_miles: 90340, work_hours: 3})
volvo_service2 = Service.find_or_create_by({date: "04/12/2019", work_description: "Changed transmission fluid", car_miles: 94901, work_hours: 4})
# create_table "services", force: :cascade do |t|
#   t.string "date"
#   t.string "work_description"
#   t.integer "car_miles"
#   t.integer "work_hours"
# end



ven1 = Vendor.find_or_create_by({name: "FCPeuro", contact: "Josh 223-234-1234", website: "www.fcpeuro.com", location: "Connecticut"})
ven2 = Vendor.find_or_create_by({name: "EMPI", contact: "Jessi 234-123-6542", website: "www.empi.com", location: "California"})
ven3 = Vendor.find_or_create_by({name: "Wolfburgs West", contact: "Bruce 560-832-5443", website: "www.wolfsburgwest.com", location: "California"})
ven4 = Vendor.find_or_create_by({name: "Audi Parts For Days", contact: "Gene 234-123-7645", website: "www.audiforever.com", location: "Idaho"})
ven5 = Vendor.find_or_create_by({name: "German Select", contact: "wolfgang 235-643-7321", website: "www.gselect.com", location: "Germany"})
# create_table "vendors", force: :cascade do |t|
#   t.string "name"
#   t.string "contact"
#   t.string "website"
#   t.string "location"
# end



bmw_part1 = Part.find_or_create_by({part_number: "45-8970-445", part_name: "MANN Oil Filter", cost: 12, part_designation: "Engine", quantity: 1, vendor_id: 1})
bmw_part2 = Part.find_or_create_by({part_number: "45-273-492", part_name: "Brembo Brake Pads", cost: 80, part_designation: "Brakes", quantity: 4, vendor_id: 1})
vw_part1 = Part.find_or_create_by({part_number: "221-408-119A", part_name: "Brembo Drum Brake Cylinder", cost: 27, part_designation: "Brakes", quantity: 2, vendor_id: 2})
vw_part2 = Part.find_or_create_by({part_number: "221-300-891B", part_name: "EMPI Fuel Regulator", cost: 45, part_designation: "Fuel", quantity: 1, vendor_id: 3})
audi_part1 = Part.find_or_create_by({part_number: "114-908040", part_name: "Head Gaskets", cost: 130, part_designation: "Engine", quantity: 1, vendor_id: 4})
audi_part2 = Part.find_or_create_by({part_number: "114-578937", part_name: "Audi Oil Filter", cost: 30, part_designation: "Engine", quantity: 1, vendor_id: 5})
volvo_part1 = Part.find_or_create_by({part_number: "vv70-567-9080", part_name: "OEM Rear Window Regulator", cost: 237, part_designation: "Interior", quantity: 1, vendor_id: 1})
volvo_part2 = Part.find_or_create_by({part_number: "vv70-700-3386", part_name: "Transmission Fluid", cost: 23, part_designation: "Transmission", quantity: 2, vendor_id: 2})
# create_table "parts", force: :cascade do |t|
#   t.string "part_number"
#   t.string "part_name"
#   t.integer "cost"
#   t.string "part_designation"
#   t.integer "quantity"
#   t.integer "vendor_id"
# end





#########NOT SEEDING#############
# bmw_vsp1 = VehicleServicePart.find_or_create_by({vehicle_id: bmw, service_id: bmw_service1, part_id: bmw_part1})
# bmw_vsp2 = VehicleServicePart.find_or_create_by({vehicle_id: bmw, service_id: bmw_service2, part_id: bmw_part2})
# vw_vsp1 = VehicleServicePart.find_or_create_by({vehicle_id: vw, service_id: vw_service1, part_id: vw_part1})
# vw_vsp2 = VehicleServicePart.find_or_create_by({vehicle_id: vw, service_id: vw_service2, part_id: vw_part2})
# audi_vsp1 = VehicleServicePart.find_or_create_by({vehicle_id: audi, service_id: audi_service1, part_id: audi_part1})
# audi_vsp2 = VehicleServicePart.find_or_create_by({vehicle_id: audi, service_id: audi_service2, part_id: audi_part2})
# volvo_vsp1 = VehicleServicePart.find_or_create_by({vehicle_id: volvo, service_id: volvo_service1, part_id: volvo_part1})
# volvo_vsp2 = VehicleServicePart.find_or_create_by({vehicle_id: volvo, service_id: volvo_service2, part_id: volvo_part2})

bmw_vsp1 = VehicleServicePart.find_or_create_by({vehicle: bmw, service: bmw_service1, part: bmw_part1})
bmw_vsp2 = VehicleServicePart.find_or_create_by({vehicle: bmw, service: bmw_service2, part: bmw_part2})
vw_vsp1 = VehicleServicePart.find_or_create_by({vehicle: vw, service: vw_service1, part: vw_part1})
vw_vsp2 = VehicleServicePart.find_or_create_by({vehicle: vw, service: vw_service2, part: vw_part2})
audi_vsp1 = VehicleServicePart.find_or_create_by({vehicle: audi, service: audi_service1, part: audi_part1})
audi_vsp2 = VehicleServicePart.find_or_create_by({vehicle: audi, service: audi_service2, part: audi_part2})
volvo_vsp1 = VehicleServicePart.find_or_create_by({vehicle: volvo, service: volvo_service1, part: volvo_part1})
volvo_vsp2 = VehicleServicePart.find_or_create_by({vehicle: volvo, service: volvo_service2, part: volvo_part2})
# create_table "vehicle_service_parts", force: :cascade do |t|
#   t.integer "vehicle_id"
#   t.integer "service_id"
#   t.integer "part_id"
# end




# Appointment.create([
#     {appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), patient: homer, doctor: hawkeye},
#     {appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), patient: bart, doctor: meredith},
#     {appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), patient: marge, doctor: michaela},
#     {appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), patient: lisa, doctor: phillip},
#     {appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), patient: maggie, doctor: leonard},
#     {appointment_datetime: DateTime.new(2016, 05, 31, 17, 00, 0), patient: homer, doctor: hawkeye},
#     {appointment_datetime: DateTime.new(2017, 06, 03, 10, 00, 0), patient: marge, doctor: meredith}
# ])
