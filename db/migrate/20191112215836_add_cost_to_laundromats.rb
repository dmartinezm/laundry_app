class AddCostToLaundromats < ActiveRecord::Migration[6.0]
  def change
    add_column :laundromats, :cost, :float
  end
end
