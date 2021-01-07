class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :sitter, :class_name => "User"
end
