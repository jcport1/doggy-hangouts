class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :message
      t.datetime :date
      t.boolean :accept

      t.timestamps
    end
  end
end
