class Producer < ApplicationRecord
  has_many :wines
  
  validates :name, :location, presence: true
  validates :name, uniqueness: true
end
