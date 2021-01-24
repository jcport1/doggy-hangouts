class Pet < ApplicationRecord

    belongs_to :user
    has_many :event_pets 
    has_many :events, through: :event_pets 

    has_many :requests
    has_many :listings 

    validates :name, :age, :size, :breed, presence: true 

    validates :size, inclusion: { in: %w(small medium large), message: "%{value} is not a valid size"}
    validates :age, inclusion:{ in: %w(puppy adolescent adult senior), message: "%{value} is not a valid age"}
    
end
