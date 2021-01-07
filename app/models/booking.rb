class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :sitter, :class_name => "User"

  validates_uniqueness_of :sitter_id, scope: [:listing_id]
end
