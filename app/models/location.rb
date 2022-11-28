class Location < ApplicationRecord
  belongs_to :dream
  belongs_to :user
end
