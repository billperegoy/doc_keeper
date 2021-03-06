class SectionsController < ApplicationController
  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to section_path @section
    else
      render :new
    end
  end

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  private
  def section_params
    params.require(:section).permit(:name)
  end
end
