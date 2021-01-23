# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 

    user1 = User.create(username: email: Faker::Internet.email, password:"password" name: Faker::Name.name )
    user2 = User.create(username: email: Faker::Internet.email password: "password" name: Faker::Name.name )

    pet1 = Pet.create(name: Faker::Creature::Dog.name, age: size:, user_id: user1)
    pet2 = Pet.create(name: age: size:, user_id: user2)

end 

2.times do

    list1 = Listing.create(title: content: author_id: user1 pet_id: pet1 )
    list2 = Listing.create(title: content: author_id: pet2 pet_id: pet2 )

end 

# Request.create(message: date: pet_id: listing_id:)

