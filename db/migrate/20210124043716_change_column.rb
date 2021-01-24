class ChangeColumn < ActiveRecord::Migration[6.1]
  
  def up
    change_column :pets, :age, :string
  end

  def down
    change_column :pets, :age, :integer
  end

end
