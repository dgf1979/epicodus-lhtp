class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      flash[:notice] = "Chapter Added"
      redirect_to chapters_path
    else
      render :new
    end
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  private
  def chapter_params
    params.require(:chapter).permit(:name)
  end

end
