class DeleteColumnSafetyFromScoreObjectCategory < ActiveRecord::Migration[7.2]
  def change
    remove_column :score_object_categories, :safety, :string
  end
end
