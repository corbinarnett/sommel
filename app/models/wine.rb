class Wine < ApplicationRecord
  has_many :tasting_notes
  belongs_to :producer
end
