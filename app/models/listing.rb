class Listing < ApplicationRecord
  belongs_to :parent, :class_name => "User"
  has_one :booking 
end
