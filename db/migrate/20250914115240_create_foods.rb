class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.integer :score, null: false
      t.string :safety, null: false
      t.string :food_image, null: false
      t.timestamps
    end
  end
end
