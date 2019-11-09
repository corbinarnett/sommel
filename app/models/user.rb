class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tasting_notes
  has_many :wines, through: :tasting_notes
  

  validates :email, :password, presence: true
  validates :email, uniqueness: true
end
