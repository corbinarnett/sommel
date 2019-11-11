class Wine < ApplicationRecord
  has_many :tasting_notes
  has_many :reviewers, through: :tasting_notes,  source: :user
  belongs_to :producer

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :vintage, numericality: {greater_than_or_equal_to: 1900, less_than_or_equal_to: Time.now.year}


  scope :rated, -> { joins(:tasting_notes).distinct("tasting_notes.sake_id")}
end

# Wine.joins(:tasting_notes)
# SELECT "wines".*
# FROM "wines"
# INNER JOIN "tasting_notes" ON "tasting_notes"."wine_id" = "wines"."id"
  # Wine.select(:tasting_notes)
    # Might return two records with the same name
    # Wine.select(:tasting_notes).distinct
    # Returns 1 record per distinct name