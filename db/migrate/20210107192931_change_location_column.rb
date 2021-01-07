class ChangeLocationColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :location, :integer
    rename_column :users, :location, :city_id

    change_column :listings, :location, :integer
    rename_column :listings, :location, :city_id
  end
end
