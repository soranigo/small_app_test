class ChangeRubbishCategorysToRubbishCategories < ActiveRecord::Migration[7.2]
  def change
    rename_table :rubbish_categorys, :rubbish_categories
  end
end
