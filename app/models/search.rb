class Search < ActiveRecord::Base
  belongs_to :user
  # has_one :propcriteria, dependent: :destroy
  # has_one :target, dependent: :destroy
  # has_one :market, dependent: :destroy
  # has_many :properties, dependent: :destroy

end
