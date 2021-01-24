class AddLocationIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :location_id, :integer
  end
end
