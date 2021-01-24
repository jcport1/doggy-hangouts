class Event < ApplicationRecord

    belongs_to :user 
    belongs_to :listing
    has_many :event_pets 
    has_many :pets, through: :event_pets 
   
    # validates :subject_line, :message, :date, presence: true
    validates :listing, uniqueness: { scope: :user, message: "You already joined this event"}
    validates :safety, inclusion: { in: [ true ], message: "guidelines must be followed to attend" }
    validates :vaccinations, inclusion: { in: [ true ], message: "must be up-to-date" }
    
    # validate :self_event_denied

    # def self_event_denied


    #     self.user_id != listing.author_id
 
      

    # end
    
end
