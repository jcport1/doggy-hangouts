class AddSafetyToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :safety, :boolean
  end
end
