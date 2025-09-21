class FoodCategory < ApplicationRecord
  def self.create_food_categories
    FoodCategory.destroy_all
    FoodCategory.create_object("lemon")
    FoodCategory.create_object("apple")
    FoodCategory.create_object("ramen")
    FoodCategory.create_object("sushi")
    FoodCategory.create_object("curry_and_rice")
    FoodCategory.create_object("takoyaki")
    FoodCategory.create_object("hot_pot_dish")
  end
end
