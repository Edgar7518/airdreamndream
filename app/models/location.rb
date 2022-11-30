class Location < ApplicationRecord
  belongs_to :dream
  belongs_to :user


  enum status: {
    pending: 0,
    confirmed: 1,
    declined: 2

  }

  validates :comment, presence: true, length: { minimum: 10}

end
