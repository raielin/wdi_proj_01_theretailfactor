class RemoveFieldsFromSearches < ActiveRecord::Migration
  def change
    remove_column :searches, :name
    remove_column :searches, :description
    remove_timestamps
  end
end
