class Request < ApplicationRecord

    belongs_to :user #who makes the request 
    belongs_to :listing
    belongs_to :pet

    validates :subject_line, :message, :date, presence: true
    validates :listing, uniqueness: { scope: :user, message: "You already made a request"}
    
    # validate :self_request_denied

    # def self_request_denied


    #     self.user_id != listing.author_id
 
      

    # end
    
end
