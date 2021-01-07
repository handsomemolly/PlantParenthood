class ChangeUserColumnBooking < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :user_id, :sitter_id
  end
end
