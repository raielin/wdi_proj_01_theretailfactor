class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.belongs_to :user, index: true
      t.text :city
      t.text :state
      t.text :zip
    end
  end
end
