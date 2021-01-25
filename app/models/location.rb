class Location < ApplicationRecord
 has_many :listings
 has_many :authors, through: :listings, source: :user 
 validates :name, presence: true 
end
