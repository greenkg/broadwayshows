class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to @post, notice: "Show successfully added."
    else
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      flash[:notice] = "Show successfully updated!"
      redirect_to @show
    else
      render :edit
    end
  end

  def delete
    @show = Show.find(params[:id])
  end

private

  def show_params
    show_params = params.require(:show).permit(:title, :image_file_name, :summary, :review, :in_advance, :kid_friendly, :genre, :status, :published_on)
  end

end
