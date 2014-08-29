class SectionController < ApplicationController

  def index
    @section = Section.all
    # @section_id = params[:section_id]
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.create(params[:section])
    if @section.lessons.create(params[:lesson])
      redirect_to("/sections")
    else
      render('sections/new.html.erb')
    end
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      redirect_to("/sections")
    else
      render('sections/edit.html.erb')
    end
  end

  def delete
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to("/sections")
  end

  def show
    @section = Section.find(params[:section_id])
    @lessons = @section.lessons
    render('sections/show.html.erb')
  end

end
