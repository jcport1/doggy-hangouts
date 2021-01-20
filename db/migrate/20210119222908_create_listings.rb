class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :content
      t.integer :author_id
      t.integer :pet_id 

      t.timestamps
    end
  end
end
