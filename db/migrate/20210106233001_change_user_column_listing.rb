class ChangeUserColumnListing < ActiveRecord::Migration[6.1]
  def change
    rename_column :listings, :user_id, :parent_id
  end
end
