class CreateEventPets < ActiveRecord::Migration[6.1]
  def change
    create_table :event_pets do |t|
      t.integer :event_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
