class ArtsController < ApplicationController

  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(params[:id])
    @comment = Comment.new
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.create(art_params)
    redirect_to arts_path
    byebug
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(params[:id])
    @art.update(art_params)
    redirect_to art_path(@art)
  end

  private

  def art_params
    params.require(:art).permit(:title, :price, :description, :user_id, :category_id, :image)
  end
end
