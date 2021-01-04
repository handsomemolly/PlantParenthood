class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :latin_name
      t.string :difficulty
      t.string :type
      t.string :rarity

      t.timestamps
    end
  end
end
