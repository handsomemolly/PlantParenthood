class User < ApplicationRecord
  has_many :user_plants, dependent: :destroy
  has_many :plants, through: :user_plants
  has_many :listings, :foreign_key => 'parent_id'
  has_many :bookings, :foreign_key => 'sitter_id'
  belongs_to :city
  has_secure_password

  validates :name, uniqueness: true
  validates :password, length: {minimum: 5}

  

  def self.sitters
    User.all.filter {|user| user.plants.length == 0 || user.plants == nil }
  end

  def self.parents
    User.all.filter {|user| user.plants.length != 0}
  end

  def convert_experience
  end

end
