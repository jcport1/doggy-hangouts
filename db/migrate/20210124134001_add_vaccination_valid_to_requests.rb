class AddVaccinationValidToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :vaccination_valid, :boolean
  end
end
