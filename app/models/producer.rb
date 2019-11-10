class Producer < ApplicationRecord
  has_many :wines
  
  validates :name, presence: true
  validates :name, uniqueness: true
end
