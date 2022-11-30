class Dream < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :locations

end
