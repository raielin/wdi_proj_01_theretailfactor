class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :text, default: ""
    add_column :users, :last_name, :text, default: ""
    add_column :users, :username, :text, null: false, default: ""
    add_index :users, :username, unique: true
    add_column :users, :picture, :binary, limit: 2.megabytes
  end
end
