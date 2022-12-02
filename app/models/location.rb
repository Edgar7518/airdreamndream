class Location < ApplicationRecord
  belongs_to :dream
  belongs_to :user

  enum status: {
    En_attente: 0,
    Confirmé: 1,
    Refusé: 2

  }

  validates :comment, presence: true, length: { minimum: 10 }
end
