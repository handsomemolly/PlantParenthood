class User < ApplicationRecord
  has_many :user_plants
  has_many :plants, through: :user_plants

  has_many :listings, :foreign_key => 'parent_id'

  has_many :bookings, :foreign_key => 'sitter_id'
end
