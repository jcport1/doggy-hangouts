class Location < ApplicationRecord
 has_many :listings
 has_many :authors, through: :listings 
 validates :name, presence: true 
end
