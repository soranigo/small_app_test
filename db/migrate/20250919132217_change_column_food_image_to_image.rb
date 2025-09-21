class ChangeColumnFoodImageToImage < ActiveRecord::Migration[7.2]
  def change
    rename_column :food_categories, :food_image, :image
  end
end
