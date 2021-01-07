class Listing < ApplicationRecord
  belongs_to :parent, :class_name => "User"
  has_one :booking 

  def total_compensation
    "$#{self.compensation * self.length_of_stay} total"
  end
end
