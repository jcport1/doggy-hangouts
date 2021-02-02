class Event < ApplicationRecord

    belongs_to :user 
    belongs_to :listing
    has_many :event_pets 
    has_many :pets, through: :event_pets 

    validates :listing, uniqueness: { scope: :user, message: "You already joined this event"}
    validates :safety, inclusion: { in: [ true ], message: "guidelines must be followed to attend" }
    validates :vaccinations, inclusion: { in: [ true ], message: "must be up-to-date" }
    scope :order_by_event_date, -> { order(date_time: :desc)} 

    
end
