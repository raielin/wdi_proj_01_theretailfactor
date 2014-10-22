class AddFieldsToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :city, :text
    add_column :searches, :state, :text
    add_column :searches, :zip, :text
  end
end
