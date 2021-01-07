class City < ApplicationRecord
  has_many :users
  has_many :listings
  has_many :bookings, through: :listings 

  def self.ordered
    ordered_cities = City.all.sort_by {|c| c.name }
    other = ordered_cities.shift
    ordered_cities.push(other)
  end

  def self.ordered_names
    City.ordered.map {|city| city.name }
  end
end
