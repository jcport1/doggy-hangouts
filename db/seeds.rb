# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # Location.create(description: "New York City", user_id: , listing_id: )
    # Location.create(description: "San Francisco", user_id: , listing_id: )
    # Location.create(description: "Houston", user_id: , listing_id: )
    # Location.create(description: "Dallas", user_id: , listing_id: )

    10.times do 

        User.create(username: Faker::Internet.username, email: Faker::Internet.email, password:"password", name: Faker::Name.name )
        
    end

    users = User.all 

    10.times do 

        Pet.create(name: Faker::Creature::Dog.name, age: Faker::Number.between(from: 1, to: 18), size: "Medium", user: users[rand(0..9)])

    end 
        


    # 20.times do

    #      Listing.create(title: Faker::Book.title, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", author: users[rand(0..9)], pet: pets[rand(0..9)])
        

    # end 


puts("Seeded!")

# Request.create(message: date: pet_id: listing_id:)

