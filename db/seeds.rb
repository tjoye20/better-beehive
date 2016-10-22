# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Business.create(name: "Dr. Tallman", business_type: "medical", buzzes: 10, stings: 3, phone_number: "555-555-5555",
                special_events: "", address: "260 Sheridan Ave., Suite B20", zip_code: "94306")
Business.create(name: "Dairy Queen", business_type: "social", buzzes: 10, stings: 5, phone_number: "555-333-5555",
                special_events: "", address: "300 Medical Drive", zip_code: "94306")
Business.create(name: "Waterloo", business_type: "social", buzzes: 10, stings: 8, phone_number: "555-222-5555",
                special_events: "", address: "260 Austin Ave.", zip_code: "94306")

Review.create(business_id: 1, feedback_type: ["accessiblity", "empowerment", "inclusion"], relationship_type: ["self", "parent/guardian", "other family/friends", "professional", "community member"] , feedback_comment: "Dr. Tallman listened to me, I really appreciate that I did not feel rushed and that he took the time to listen and even share a bit of his story. While he did not have a definite answer for my diagnosis, I appreciate that he did not dismiss me because he did not know, and explained in a clear and kind way what my statistical likelihood that something like this would happen again.
")
Review.create(business_id: 2, feedback_type: ["accessiblity", "empowerment"] , relationship_type: ["self", "parent/guardian"], feedback_comment: "There is a sign on the front door that states 'Allergies? Allergens are present in this location and we cannot guarantee any item to be allergen free'.  To see this made me feel like if I wasn't willing to deal with the side affects of ones allergy, meant that I had to get back In my car and move on.
")
Review.create(business_id: 3, feedback_type: ["accessiblity"], relationship_type: ["self", "parent/guardian"], feedback_comment: "They sucked.")
