class ChangeColumnTypeCompensation < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :compensation, :integer
  end
end
