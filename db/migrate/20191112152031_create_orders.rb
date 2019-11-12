class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :laundromat_id
      t.integer :employee_id
      t.string :order_type
      t.integer :loads

      t.timestamps
    end
  end
end
