# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Business.create(name: "Waterloo Medical Center", type: "", buzzes: 10, phone_number: "555-555-5555",
                special_events: "", address: "260 Sheridan Ave., Suite B20", zip_code: "94306")

Business.create(name: "Waterloo Ice House", business_type: "social", buzzes: 20, stings: 3, phone_number: "512-418-9700",
                special_events: "", address: "6203 N Capital of Texas Hwy.", zip_code: "78731")

Business.create(name: "Grim Reaper", business_type: "medical", buzzes: 2, stings: 30, phone_number: "737-666-5014",
                special_events: "", address: "1000 Graveyard Way", zip_code: "78456")

Business.create(name: "Mayo Clinic", business_type: "medical", buzzes: 43, stings: 7, phone_number: "737-777-8000",
                special_events: "", address: "2000 W 29th St.", zip_code: "78394")




