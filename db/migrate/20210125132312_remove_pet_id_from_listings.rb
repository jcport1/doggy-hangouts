class RemovePetIdFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :pet_id, :integer
  end
end
