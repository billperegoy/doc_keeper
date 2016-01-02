class SubSectionsController < ApplicationController
  def new
    @section = Section.find(params[:section_id])
    @sub_section = @section.sub_sections.new
  end

  def create
    @section = Section.find(params[:section_id])
    @sub_section = @section.sub_sections.new(sub_section_params)

    if @sub_section.save
      redirect_to section_sub_sections_path(@section)
    else
      render :new
    end
  end

  def index
    @section = Section.find(params[:section_id])
    @sub_sections = @section.sub_sections
  end

  private
  def sub_section_params
    params.require(:sub_section).permit(:name)
  end
end
