class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :sitter, :class_name => "User"

  # validates_uniqueness_of :sitter_id, scope: [:listing_id]
  validate :sitter_is_parent

  def sitter_is_parent
    if self.sitter_id == self.listing.parent_id
      errors.add(:sitter_id, "can't sit their own plants!")
    end
  end
end
