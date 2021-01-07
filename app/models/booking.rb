class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :sitter, :class_name => "User"

  # validates_uniqueness_of :sitter_id, scope: [:listing_id]
  validates :current_user

  def validate
    if(self.sitter_id == @listing.parent_id)
      errors.add()
  end
end
