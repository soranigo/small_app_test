class CreateScoreObjects < ActiveRecord::Migration[7.2]
  def change
    create_table :score_objects do |t|
      t.references :score_object_categories, foreign_key: true
      t.timestamps
    end
  end
end
