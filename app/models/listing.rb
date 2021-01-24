class Listing < ApplicationRecord

    belongs_to :author, class_name: "User"
    belongs_to :pet
    belongs_to :location
    has_many :requests 
    has_many :user_requestors, through: :requests, source: :user_id

    accepts_nested_attributes_for :location 

    validates :title, :content, presence: true
    scope :order_by_date, -> { order(created_at: :asc)} 
    
end
