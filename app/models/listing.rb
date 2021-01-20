class Listing < ApplicationRecord

    has_many :requests 
    has_many :user_requestors, through: :requests, source: :user_id
    belongs_to :author, class_name: "User"
    belongs_to :pet
end
