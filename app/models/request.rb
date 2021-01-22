class Request < ApplicationRecord

    belongs_to :user #who makes the request 
    belongs_to :listing
    belongs_to :pet

    validates :subject_line, :message, :date, presence: true 
end
