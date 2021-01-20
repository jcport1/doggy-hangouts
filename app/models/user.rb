class User < ApplicationRecord

    has_many :pets
    has_many :requests
    has_many :answered_listings, through: :requests, source: :listing
    has_many :authored_listings, foreign_key: :author_id, class_name: "Listing"

end
