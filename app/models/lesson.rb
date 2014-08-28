class Lesson < ActiveRecord::Base

  validates :name, :presence => true
  validates :text, :presence => true
  validates :lesson, :numericality => true

end
