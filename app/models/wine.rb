class Wine < ApplicationRecord
  has_many :tasting_notes
  belongs_to :winery
end
