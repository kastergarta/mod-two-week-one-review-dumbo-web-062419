class SeasController < ApplicationController

  before_action :find_sea, only: [:show, :edit, :update, :destroy]

  def index
    @seas = Sea.all
  end

  def show
  end

  def new
    @sea = Sea.new(params[:id])
  end

  def create
    @sea = Sea.create(sea_params)
    redirect_to sea_path(@sea)
  end

  def edit
  end

  def update
    @sea.update(sea_params)
    redirect_to sea_path(@sea)
  end

  def destroy
    @sea.destroy
    redirect_to seas_path
  end

  private

  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :image_url, :mood, :favorite_color, :scariest_creature, :has_mermaids)
  end

  def find_sea
    @sea = Sea.find(params[:id])
  end

end
