class Pet < ApplicationRecord

    belongs_to :user
    has_many :requests
    has_many :listings 

    validates :name, :age, :size, presence: true 

    validates :size, inclusion: { in: %w(Small Medium Large), message: "%{value} is not a valid size"}
    
end
