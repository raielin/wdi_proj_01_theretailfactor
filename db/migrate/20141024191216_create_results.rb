class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :search, index: true
    end
  end
end
