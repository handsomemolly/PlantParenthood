class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :length_of_stay
      t.string :location

      t.timestamps
    end
  end
end
