class User < ApplicationRecord
  has_many :user_plants, dependent: :destroy
  has_many :plants, through: :user_plants
  has_many :listings, :foreign_key => 'parent_id'
  has_many :bookings, :foreign_key => 'sitter_id'
  has_secure_password

  def self.sitters
    User.all.map {|user| user.user_plants.length == 0 || user.user_plants == nil }
  end

  def convert_experience
  end

  def find_note
    @note_plants = self.user_plants.filter {|user_plant| user_plant.notes != []}
    @note_plants.map {|note_plant| note_plant.notes }
  end
end
