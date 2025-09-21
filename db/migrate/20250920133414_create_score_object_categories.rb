class CreateScoreObjectCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :score_object_categories do |t|
      t.string :name, null: false
      t.integer :score, null: false
      t.string :safety, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
