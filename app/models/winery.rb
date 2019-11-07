class Winery < ApplicationRecord
  has_many :wines
  belongs_to :location
end
