class Location < ApplicationRecord
    
 has_many :listings, -> { order 'date_time asc'}
 has_many :authors, through: :listings, source: :user 
 validates :name, presence: true 
 
end
