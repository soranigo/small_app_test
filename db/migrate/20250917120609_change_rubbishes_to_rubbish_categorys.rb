class ChangeRubbishesToRubbishCategorys < ActiveRecord::Migration[7.2]
  def change
    rename_table :rubbishes, :rubbish_categorys
  end
end
