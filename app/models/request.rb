class Request < ApplicationRecord

    belongs_to :user
    belongs_to :listing
    belongs_to :pet
end
