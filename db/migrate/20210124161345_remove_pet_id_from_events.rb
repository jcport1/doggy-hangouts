class RemovePetIdFromEvents < ActiveRecord::Migration[6.1]
  
  def change

    remove_column :events, :pet_id, :integer
  end
end
