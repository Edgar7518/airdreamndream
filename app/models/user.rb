class User < ApplicationRecord
  has_many :locations
  has_many :dreams
  has_many :locations_as_owner, through: :dreams, source: :locations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
