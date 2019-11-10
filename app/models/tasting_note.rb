class TastingNote < ApplicationRecord
  belongs_to :user
  belongs_to :wine

  validates :rating, :comment, presence: true
  validates :comment, length: { maximum: 500 }
  
end
