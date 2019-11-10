class Wine < ApplicationRecord
  has_many :tasting_notes
  belongs_to :producer

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :vintage, numercality: true
end
