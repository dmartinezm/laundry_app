class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :laundromat_id

      t.timestamps
    end
  end
end
