class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.create_object(object_name, score = 1)
    if self.last.nil?
      score_object = self.new(id: 1, name: object_name, score: score, image: "#{object_name}.png")
    else
      score_object = self.new(id: self.last.id + 1, name: object_name, score: score, image: "#{object_name}.png")
    end
    score_object.save
  end
end
