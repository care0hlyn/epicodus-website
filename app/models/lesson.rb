class Lesson < ActiveRecord::Base

  validates :name, :presence => true
  validates :text, :presence => true
  validates :lesson, :numericality => true
  belongs_to :section

  def next
    next_lesson_number = self.lesson + 1
    lesson = Lesson.find_by(:lesson => next_lesson_number)
    lesson
  end

  def previous
    previous_lesson_number = self.lesson - 1
    lesson = Lesson.find_by({:lesson => previous_lesson_number})
    lesson
  end

end
