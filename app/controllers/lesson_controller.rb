class LessonController < ApplicationController
  def index
    @lessons = Lesson.all
    @lesson = Lesson.new
    render('lessons/index.html.erb')
  end

  def new
    render('lessons/new.html.erb')
  end
end
