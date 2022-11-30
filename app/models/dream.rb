class Dream < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :locations

  validates :name, presence: { message: "Ton rêve serait meilleur avec un nom!" }, uniqueness: true, length: { minimum: 5 }
  validates :price, presence: true, numericality: { only_integer: true}
  validates :duration, presence: true, numericality: { only_integer: true }
  validates :description, presence: { message: "Une petite description aiderait ton rêve à être choisi!" }, uniqueness: true, length: { minimum: 10 }
end
