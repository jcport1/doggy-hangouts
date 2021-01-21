class User < ApplicationRecord

    has_many :pets
    has_many :requests #sent requests 
    
    has_many :answered_listings, through: :requests, source: :listing
    has_many :authored_listings, foreign_key: :author_id, class_name: "Listing"

    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true 

    has_secure_password

end
