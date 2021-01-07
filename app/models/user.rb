class User < ApplicationRecord
  has_many :user_plants, dependent: :destroy
  has_many :plants, through: :user_plants
  has_many :listings, :foreign_key => 'parent_id'
  has_many :bookings, :foreign_key => 'sitter_id'
  has_secure_password

  def self.sitters
    User.all.map {|user| user if user.user_plants.length == 0 || user.user_plants == nil }
  end

  def self.parents
    User.all.map {|user| user if user.plants.length != 0}
  end

<<<<<<< HEAD
  def find_note
    @note_plants = self.user_plants.filter {|user_plant| user_plant.notes != []}
    @note_plants.collect {|note_plant| note_plant.notes }.flatten
=======
  def convert_experience
>>>>>>> 4f2d9e606b41cd88ac4d6c8e496b539ff8ef36d7
  end


end
