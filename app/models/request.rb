class Request < ApplicationRecord

    belongs_to :user
    belongs_to :listing
    belongs_to :pet

    validates :message, :date, presence: true 
end
