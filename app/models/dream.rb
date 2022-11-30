class Dream < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :locations













  has_one_attached :photo
end
