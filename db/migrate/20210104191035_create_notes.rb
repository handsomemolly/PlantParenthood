class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.belongs_to :user_plant, null: false, foreign_key: true
      t.string :add_care

      t.timestamps
    end
  end
end
