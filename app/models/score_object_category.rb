class ScoreObjectCategory < ApplicationRecord
  has_many :score_objects, dependent: :destroy, foreign_key: :score_object_categories_id

  def self.create_score_object_categories
    ScoreObjectCategory.destroy_all
    ScoreObjectCategory.create_object("lemon")
    ScoreObjectCategory.create_object("apple")
    ScoreObjectCategory.create_object("ramen")
    ScoreObjectCategory.create_object("sushi")
    ScoreObjectCategory.create_object("curry_and_rice")
    ScoreObjectCategory.create_object("takoyaki")
    ScoreObjectCategory.create_object("hot_pot_dish")
    ScoreObjectCategory.create_object("snack_wrapper", -1)
    ScoreObjectCategory.create_object("tire", -1)
  end
  
  private

  def self.create_object(object_name, score = 1)
    if self.last.nil?
      score_object = self.new(id: 0, name: object_name, score: score, image: "#{object_name}.png")
    else
      score_object = self.new(id: self.last.id + 1, name: object_name, score: score, image: "#{object_name}.png")
    end
    score_object.save
  end
end
