class User < ApplicationRecord
  has_many :tasting_notes
  has_many :wines, through: :tasting_notes
  has_secure_password
end
