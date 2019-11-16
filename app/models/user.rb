class User < ApplicationRecord
  has_many :tasting_notes
  has_many :wines, through: :tasting_notes
  has_secure_password

  validates :username, :email, :password, presence: true
  validates :email, uniqueness: true




  def self.from_omniauth(auth)
    # first_or_initialize selects the first record within a relation if it exists, otherwise creates a new record with the optional attributes.
    self.where(email: auth.info.email).first_or_initialize do |user|
      # user.email = auth.info.email
      user.username ||= auth.info.name
      user.password ||= SecureRandom.hex
    end
  end


end
