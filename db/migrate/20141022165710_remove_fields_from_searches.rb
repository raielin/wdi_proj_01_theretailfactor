class RemoveFieldsFromSearches < ActiveRecord::Migration
  def change
    remove_column :searches, :name, :text
    remove_column :searches, :description, :text
  end
end
