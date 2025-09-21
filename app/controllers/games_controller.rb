class GamesController < ApplicationController
  before_action :create_score_objects, only: :start

  def start
    @score_objects = ScoreObject.all
    @score = 0
  end

  def end

  end

  def eat
    @score_objects = ScoreObject.all
    if @score_objects.first.score_object_category.score > 0
      @score += @score_objects.first.score_object_category.score
      @score_objects.first.delete
    else
      redirect_to "/"
    end
  end

  def result

  end

  private

  def create_score_objects
    ScoreObjectCategory.create_score_object_categories
    5.times do |i|
      @score_object_category = ScoreObjectCategory.find(rand(ScoreObjectCategory.count))
      if ScoreObject.last.nil?
        @score_object = ScoreObject.new(id: 0, score_object_categories_id: @score_object_category.id, created_at: Time.current, updated_at: Time.current)
      else
        @score_object = ScoreObject.new(id: ScoreObject.last.id + 1, score_object_categories_id: @score_object_category.id, created_at: Time.current, updated_at: Time.current)
      end
      @score_object.save
    end
  end
end
