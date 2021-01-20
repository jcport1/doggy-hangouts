class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :message
      t.datetime :date
      t.boolean :accept
      t.integer :user_id
      t.integer :pet_id 
      t.integer :listing_id

      t.timestamps
    end
  end
end
