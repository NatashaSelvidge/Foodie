Restaurant.destroy_all

puts "seeding database..."
# Zomato::Adapter.new.fetch_restaurants

Restaurant.create(name: "Apple Bees", location: "Orange, Ca", ratings: 3, reviews: "Great place for the family!", image: "https://images.unsplash.com/photo-1577228232376-247e1c5d2b5d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80", user_id: 1)
Restaurant.create(name: "Buffalo Wild Wings", location: "Costa Mesa, Ca", ratings: 4, reviews: "Great place to watch the big Game!", image: "https://images.unsplash.com/photo-1549996647-190b679b33d7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDl8fHJlc3RhdXJhbnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", user_id: 2)
Restaurant.create(name: "Red Lobster", location: "Garden Grove, Ca", ratings: 5, reviews: "Great place for Yummmy Seafood!", image: "https://images.unsplash.com/photo-1591261730799-ee4e6c2d16d7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDh8fHJlc3RhdXJhbnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", user_id: 3)
Restaurant.create(name: "Yard House", location: "Irvine, Ca", ratings: 5, reviews: "Great place for friends to hangout!", image: "https://images.unsplash.com/photo-1591261730799-ee4e6c2d16d7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDh8fHJlc3RhdXJhbnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", user_id: 4)

User.create(username: "Tosha", password_digest: "hello")
User.create(username: "Sarah", password_digest: "hello")
User.create(username: "Kristina", password_digest: "hello")
User.create(username: "Meg", password_digest: "hello")
User.create(username: "Hailey", password_digest: "hello")
puts "done."