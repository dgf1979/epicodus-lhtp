class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.find(params[:section_id])
    @lesson = Lesson.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson Added"
      redirect_to chapters_path
    else
      render :new
    end
  end

  def show
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :text, :number)
  end

end
