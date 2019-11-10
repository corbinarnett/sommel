class User < ApplicationRecord
  has_many :tasting_notes
  has_many :wines, through: :tasting_notes
  has_secure_password

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 2..20 }
  validates :password, length: { in: 6..20 }


  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize do |user|
      user.username = auth.info.name
      user.email = auth.info.email
      user.password = SecureRandom.hex
    end
  end
end
