class GamesController < ApplicationController
  def game_start
    FoodCategory.create_food_categories
    RubbishCategory.create_rubbish_categories
    create_score_objects
    
  end

  def game_end

  end

  private

  def create_score_objects
    @score_objects = []
    100.times do |i|
      if rand(100).to_i <= 90
        @score_object = FoodCategory.find(rand(FoodCategory.count))
      else
        @score_object = RubbishCategory.find(rand(RubbishCategory.count))
      end
      @score_objects.push(@score_object)
    end
  end
end
