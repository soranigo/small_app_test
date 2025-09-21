class RubbishCategory < ApplicationRecord
  def self.create_rubbish_categories
    RubbishCategory.destroy_all
    RubbishCategory.create_object("snack_wrapper", -1)
    RubbishCategory.create_object("tire", -1)
  end
end
