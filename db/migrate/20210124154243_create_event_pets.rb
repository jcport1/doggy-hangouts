class CreateEventPets < ActiveRecord::Migration[6.1]
  def change
    create_table :event_pets do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
