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


    u1 = User.create(username: "billy1", email: "billy@billy.com", password: "123", name: "billy")
    u2 = User.create(username: "sarah1", email: "sarah@sarah.com", password: "123", name: "sarah")
    u3 = User.create(username: "diana1", email: "diana@diana.com", password: "123", name: "diana")
    u4 = User.create(username: "ivy1", email: "ivy@ivy.com", password: "123", name: "ivy")
    u5 = User.create(username: "dan1", email: "dan@dan.com", password: "123", name: "dan")
    u6 = User.create(username: "phil1", email: "phil@phil.com", password: "123", name: "phil")
    u7 = User.create(username: "james1", email: "james@james.com", password: "123", name: "james")
    u8 =User.create(username: "laura1", email: "laura@laura.com", password: "123", name: "laura")

    p1 = Pet.create(name: "lulu", age: 1, size: "Small", user:u1)
    p2 = Pet.create(name: "buddy", age: 2, size: "Medium", user:u2)
    p3 = Pet.create(name: "coco", age: 3, size: "Large", user:u3)
    p4 = Pet.create(name: "baxter", age: 4, size: "Small", user:u4)
    p5 = Pet.create(name: "baobao", age: 5, size: "Medium", user:u5)
    p6 = Pet.create(name: "balto", age: 6, size: "Large", user:u6)
    p7 = Pet.create(name: "togo", age: 7, size: "Small", user:u7)
    p8 = Pet.create(name: "champ", age: 8, size: "Medium", user:u8)

    Listing.create(title: "Lulu Needs Friends", content: "lorem ipsum", author:u1, pet:p1)
    Listing.create(title: "Buddy Needs Friends", content: "lorem ipsum", author:u2, pet:p2)
    Listing.create(title: "Coco Needs Friends", content: "lorem ipsum", author:u3, pet:p3)
    Listing.create(title: "Baxter Needs Friends", content: "lorem ipsum", author:u4, pet:p4)
    Listing.create(title: "Baobao Needs Friends", content: "lorem ipsum", author:u5, pet:p5)
    Listing.create(title: "Togo Needs Friends", content: "lorem ipsum", author:u7, pet:p7)
    Listing.create(title: "Champ Needs Friends", content: "lorem ipsum", author:u8, pet:p8)

   
    # 10.times do 

    #     User.create(username: Faker::Internet.username, email: Faker::Internet.email, password:"password", name: Faker::Name.name )
        
    # end

    # users = User.all 

    # 10.times do 

    #     Pet.create(name: Faker::Creature::Dog.name, age: Faker::Number.between(from: 1, to: 18), size: "Medium", user: users[rand(0..9)])

    # end 
        


    # 20.times do

    #      Listing.create(title: Faker::Book.title, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", author: users[rand(0..9)], pet: pets[rand(0..9)])
        

    # end 


# puts("Seeded!")

# Request.create(message: date: pet_id: listing_id:)

