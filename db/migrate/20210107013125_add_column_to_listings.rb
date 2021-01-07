class AddColumnToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :compensation, :string
  end
end
