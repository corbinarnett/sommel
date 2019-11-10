class User < ApplicationRecord
  has_many :tasting_notes
  has_many :wines, through: :tasting_notes
  has_secure_password

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 2..20 }
  validates :password, length: { in: 6..20 }
end
