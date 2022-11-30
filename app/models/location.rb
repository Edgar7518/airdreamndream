class Location < ApplicationRecord
  belongs_to :dream
  belongs_to :user

  validates :comment, presence: true, length: { minimum: 10}
end
