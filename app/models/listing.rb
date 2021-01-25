class Listing < ApplicationRecord

    belongs_to :author, class_name: "User"
    belongs_to :pet
    belongs_to :location
    # accepts_nested_attributes_for :location 
    has_many :events
    has_many :user_requestors, through: :events, source: :user_id

   

    validates :title, :content, presence: true
    scope :order_by_date, -> { order(created_at: :asc)} 

    def location_attributes=(attributes)

        if !attributes[:name].blank?

        self.location = Location.find_or_create_by(attributes)

        end  
    end
    
end
