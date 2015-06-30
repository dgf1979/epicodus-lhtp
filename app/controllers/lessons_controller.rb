class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @section = Section.find(params[:section_id])
    @lesson = Lesson.new
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Lesson Added"
      redirect_to section_path(@section.id)
    else
      render :new
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :text)
  end

end
