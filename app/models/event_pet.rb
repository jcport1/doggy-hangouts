class EventPet < ApplicationRecord
    belongs_to :event
    belongs_to :pet
end
