class SectionController < ApplicationController

  def index
    @section = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

end
