class SectionsController < ApplicationController
  def index
    @chapter = Chapter.find(params[:chapter_id])
    @sections = Section.all
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.new
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)
    if @section.save
      flash[:notice] = "Section Added"
      redirect_to chapters_path
    else
      render :new
    end
  end

  def show
    @section = Section.find(params[:id])
  end

  private
  def section_params
    params.require(:section).permit(:name)
  end

end
