class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :subject_or_grade, :string
    add_column :users, :location, :string
  end
end
