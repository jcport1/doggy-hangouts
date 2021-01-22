class Pet < ApplicationRecord

    belongs_to :user
    has_many :requests
    has_many :listings 

    validates :name, :age, :size, presence: true 
    
end
