class Lesson < ActiveRecord::Base

  validates :name, :presence => true
  validates :text, :presence => true
  validates :lesson, :numericality => true
  belongs_to :section

  def sort_by_lesson
   default_scope { where(lesson: :asc)}
  end

  def next
    lesson = Lesson.where("lesson > ?", self.lesson).first
    lesson
  end

  def previous
    lesson = Lesson.where("lesson < ?", self.lesson).first
    lesson
  end

end
