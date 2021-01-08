class Listing < ApplicationRecord
  belongs_to :parent, :class_name => "User" 
  belongs_to :city
  has_one :booking 

  def total_compensation
    "$#{self.compensation * self.length_of_stay} total"
  end

  def care_required
    difficulties = self.parent.plants.map {|p| p.difficulty }
    difficulties.any?("Advanced") ? "Advanced" : difficulties.max
  end

  def display_plants
    self.parent.plants.each
  end

  def recommend_sitters
    User.sitters.filter {|sitter| sitter.experience == "Plant wizard"}.sample(3)
  end

  def self.sort_by_compensation
    Listing.all.sort_by {|listing| listing.compensation }.reverse!
  end

  def self.sort_by_duration
    Listing.all.sort_by {|listing| listing.length_of_stay}
  end

  def self.filter_by_location(user)
    Listing.all.filter {|listing| listing.city_id == user.city_id }
  end
end
