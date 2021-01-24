class DropEventPets < ActiveRecord::Migration[6.1]
  def change
    drop_table :event_pets
  end
end
