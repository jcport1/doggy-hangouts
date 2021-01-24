class RenameRequestsToEvents < ActiveRecord::Migration[6.1]
  def up

    rename_table :requests, :events 

  end

  def down

    rename_table :events, :requests 
    
  end

end
