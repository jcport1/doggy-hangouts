class Listing < ApplicationRecord

    belongs_to :author, class_name: "User"
    belongs_to :location
    has_many :events
    has_many :user_requestors, through: :events, source: :user_id

    validates :title, :content, :date_time, :location, presence: true
    scope :order_by_post_date, -> { order(created_at: :desc)} 
    scope :event_with_most_rsvps, -> {joins(:events).group(:id).order('COUNT(events.id) DESC')} 
    

    #custom method in order to allow us to find or create location
    #custom method unlike accepts_nested_attributes does not create duplicates 

    def location_attributes=(attributes)

        if !attributes[:name].blank?

        self.location = Location.find_or_create_by(attributes)

        end  
    end
    
end
