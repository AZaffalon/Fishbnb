class FishesController < ApplicationController
  before_action :set_fish, only: [:show, :edit, :update, :destroy]

  def index
    @fishes = Fish.all
  end

  def show
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(fish_params)
    @fish.user = current_user
    if @fish.save
      redirect_to fish_path(@fish)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @fish.update(fish_params)
    redirect_to fish_path(@fish)
  end

  def destroy
    @fish.destroy
    redirect_to fishes_path
  end

  private

  def set_fish
    @fish = Fish.find(params[:id])
  end

  def fish_params
    params.require(:fish).permit(:name, :price_per_week, :colour, :length, :fish_type_id)
  end
end
