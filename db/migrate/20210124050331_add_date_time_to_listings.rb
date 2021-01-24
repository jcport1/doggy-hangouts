class AddDateTimeToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :date_time, :datetime
  end
end
