class Booking < ApplicationRecord
  belongs_to :listing
  has_one :city, through: :listing
  belongs_to :sitter, :class_name => "User"
end
