class ChangeFoodCategorysToFoodCategories < ActiveRecord::Migration[7.2]
  def change
    rename_table :food_categorys, :food_categories
  end
end
