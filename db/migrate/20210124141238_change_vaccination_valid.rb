class ChangeVaccinationValid < ActiveRecord::Migration[6.1]

  def up
    rename_column :requests, :vaccination_valid, :vaccinations
  end

  def down
    rename_column :requests, :vaccinations, :vaccination_valid 
  end

end
