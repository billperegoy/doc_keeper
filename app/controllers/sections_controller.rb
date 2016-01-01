class SectionsController < ApplicationController
  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to sections_path
    else
      render :new
    end
  end

  def index
    @sections = Section.all
  end

  private
  def section_params
    params.require(:section).permit(:name)
  end
end
