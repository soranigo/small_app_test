class DeleteColumnSafetyFromFoodCategoryAndRubbishCategory < ActiveRecord::Migration[7.2]
  def change
    remove_column :food_categories, :safety
    remove_column :rubbish_categories, :safety
  end
end
