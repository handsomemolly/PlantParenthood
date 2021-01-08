class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :sitter, :class_name => "User"

  # validates_uniqueness_of :sitter_id, scope: [:listing_id]
  validate :sitter_is_parent

  def sitter_is_parent
    byebug
    if self.sitter_id == @booking.listing.parent_id
      errors.add(:sitter_id, "You're the one going away!")
    end
  end
end
