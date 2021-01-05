class User < ApplicationRecord
  has_many :user_plants, dependent: :destroy
  has_many :plants, through: :user_plants
  has_many :listings, :foreign_key => 'parent_id'
  has_many :bookings, :foreign_key => 'sitter_id'
  has_secure_password

  def sitters
    User.all.map {|user| user.user_plants.length == 0 || user.user_plants == nil }
  end
end
