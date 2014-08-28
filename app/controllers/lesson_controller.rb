class LessonController < ApplicationController
  def index
    @lessons = Lesson.all
    @lesson = Lesson.new
    render('lessons/index.html.erb')
  end

  def new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to("/lessons/")
    else
      render('lessons/new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      redirect_to("/lessons/#{@lesson.id}/show")
    else
      render("lessons/edit.html.erb")
    end
  end

  def delete
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to("/lessons/")
  end

end
