class ScoreObject < ApplicationRecord
  belongs_to :score_object_category, foreign_key: :score_object_categories_id
end
