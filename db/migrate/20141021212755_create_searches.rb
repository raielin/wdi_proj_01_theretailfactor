class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.belongs_to :user, index: true
      t.text :name
      t.text :description
      t.timestamps
    end
  end
end
