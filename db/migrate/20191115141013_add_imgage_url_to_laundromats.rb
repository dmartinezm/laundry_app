class AddImgageUrlToLaundromats < ActiveRecord::Migration[6.0]
  def change
    add_column :laundromats, :image_url, :string
  end
end
