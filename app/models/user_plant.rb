class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :notes
end
