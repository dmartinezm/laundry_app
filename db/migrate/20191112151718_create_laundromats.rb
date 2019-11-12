class CreateLaundromats < ActiveRecord::Migration[6.0]
  def change
    create_table :laundromats do |t|
      t.string :name
      t.string :zipcode
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
