class ChangeColumnRubbishImageToImage < ActiveRecord::Migration[7.2]
  def change
    rename_column :rubbish_categories, :rubbish_image, :image
  end
end
