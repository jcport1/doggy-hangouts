class User < ApplicationRecord

    has_many :pets
    #sent requests
    has_many :events
    has_many :answered_listings, through: :events, source: :listing
    has_many :authored_listings, foreign_key: :author_id, class_name: "Listing"
    #received requests 
    has_many :received_events, through: :authored_listings, source: :events
    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true 
    has_secure_password

    def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.username = response[:info][:name]
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end

end
