class Lesson < ActiveRecord::Base

  validates :name, :presence => true
  validates :text, :presence => true
  validates :lesson, :numericality => true
  belongs_to :section

  def next
    lesson = Lesson.where("lesson > ?", self.lesson).first
    lesson
  end

  def previous
    lesson = Lesson.where("lesson < ?", self.lesson).first
    lesson
  end

end
