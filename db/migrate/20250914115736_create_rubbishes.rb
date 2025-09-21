class CreateRubbishes < ActiveRecord::Migration[7.2]
  def change
    create_table :rubbishes do |t|
      t.string :name, null: false
      t.integer :score, null: false
      t.string :safety, null: false
      t.string :rubbish_image, null: false
      t.timestamps
    end
  end
end
