class AddSubjectLineToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :subject_line, :string
  end
end
