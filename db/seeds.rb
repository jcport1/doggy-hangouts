# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    l1 = Location.create(name: "Back Cove Park")
    l2 = Location.create(name: "Eastern Prom Trail")
    l3 = Location.create(name: "Bug Light Park")


    u1 = User.create(username: "billy1", email: "billy@billy.com", password: "123", name: "billy")
    u2 = User.create(username: "sarah1", email: "sarah@sarah.com", password: "123", name: "sarah")
    u3 = User.create(username: "diana1", email: "diana@diana.com", password: "123", name: "diana")
    u4 = User.create(username: "ivy1", email: "ivy@ivy.com", password: "123", name: "ivy")
    u5 = User.create(username: "dan1", email: "dan@dan.com", password: "123", name: "dan")
    u6 = User.create(username: "phil1", email: "phil@phil.com", password: "123", name: "phil")
    u7 = User.create(username: "james1", email: "james@james.com", password: "123", name: "james")
    u8 =User.create(username: "laura1", email: "laura@laura.com", password: "123", name: "laura")

    p1 = Pet.create(name: "lulu", age: "puppy", breed: "pug", size: "small", gender: "male", user:u1).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_1.jpg'), filename: 'dog_1.jpg')
    p2 = Pet.create(name: "buddy", age: "adolescent", breed: "beagle", size: "medium", gender: "female", user:u2).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_2.jpg'), filename: 'dog_2.jpg')
    p3 = Pet.create(name: "coco", age: "adult", breed: "chow chow", size: "large", gender: "male", user:u3).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_3.jpg'), filename: 'dog_3.jpg')
    p4 = Pet.create(name: "baxter", age: "senior", breed: "pomeranian", size: "small", gender: "female", user:u4).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_4.jpg'), filename: 'dog_4.jpg')
    p5 = Pet.create(name: "baobao", age: "puppy", breed: "shetland sheepdog", size: "medium", gender: "male", user:u5).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_5.jpg'), filename: 'dog_5.jpg')
    p6 = Pet.create(name: "balto", age: "adolescent", breed: "labrador retriever", size: "large", gender: "female", user:u6).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_6.jpg'), filename: 'dog_6.jpg')
    p7 = Pet.create(name: "togo", age: "adult", breed: "chihuahua", size: "small", gender: "male", user:u7).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_7.jpg'), filename: 'dog_7.jpg')
    p8 = Pet.create(name: "champ", age: "senior", breed: "scottish terrier", size: "medium", gender: "female", user:u8).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_8.jpg'), filename: 'dog_8.jpg')
    p9 = Pet.create(name: "bubs", age: "puppy", breed: "corgie", size: "small", gender: "male", user:u1).profile_pic.attach(io: File.open('app/assets/images/seed_images/dogs/dog_9.jpg'), filename: 'dog_9.jpg')

    Listing.create(title: "Dog Meet-up soon!", content: "lorem ipsum", date_time: '2021-02-06 10:00:00 UTC',  author:u1, location:l1)
    Listing.create(title: "Pups Chill Session", content: "lorem ipsum", date_time: '2021-02-07 10:00:00 UTC', author:u2, location:l2)
    Listing.create(title: "Valentines Day Weekend", content: "lorem ipsum", date_time: '2021-02-14 10:00:00 UTC', author:u3, location:l3)
    Listing.create(title: "Next week?", content: "lorem ipsum", date_time: '2021-02-13 10:00:00 UTC', author:u4, location:l2)
    Listing.create(title: "Puppy Party", content: "lorem ipsum", date_time: '2021-02-20 10:00:00 UTC', author:u5, location:l3)
    Listing.create(title: "Agility Activity at Park", content: "lorem ipsum", date_time: '2021-02-21 10:00:00 UTC', author:u7, location:l1)
    Listing.create(title: "Small Dogs Get Together", content: "lorem ipsum", date_time: '2021-02-27 10:00:00 UTC', author:u8, location:l2)
    Listing.create(title: "Bark Cove Jamboree", content: "lorem ipsum", date_time: '2021-02-08 10:00:00 UTC', author:u4, location:l1)
    Listing.create(title: "March Madness", content: "lorem ipsum", date_time: '2021-03-06 10:00:00 UTC', author:u4, location:l3)

   
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

