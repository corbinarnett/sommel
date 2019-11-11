class Wine < ApplicationRecord
  has_many :tasting_notes
  belongs_to :producer

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :vintage, numericality: {greater_than_or_equal_to: 1900, less_than_or_equal_to: Time.now.year}
end
