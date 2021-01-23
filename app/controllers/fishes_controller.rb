class FishesController < ApplicationController
  before_action :set_fish, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @fishes = Fish.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @fishes = Fish.all
    end
    authorize @fishes
    @markers = @fishes.geocoded.map do |fish|
      {
        lat: fish.latitude,
        lng: fish.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { fish: fish }),
        image_url: helpers.asset_url(
          "https://res.cloudinary.com/drzg8kw0k/image/upload/v1610649377/fishbnb/logo_gbtsbs.png"
        )
      }
    end
  end

  def show
    authorize @fish
  end

  def new
    @fish = Fish.new
    authorize @fish
  end

  def create
    @fish = Fish.new(fish_params)
    authorize @fish
    @fish.user = current_user
    if @fish.valid?
      @fish.save
      redirect_to fish_path(@fish)
    else
      render :new
    end
  end

  def edit
    authorize @fish
  end

  def update
    authorize @fish
    @fish.assign_attributes(fish_params)
    if @fish.valid? 
      @fish.save
      # @fish.photo.attach(params[:photo])
      redirect_to fish_path(@fish)
    else
      render :edit
    end
  end

  def destroy
    authorize @fish
    @fish.destroy
    redirect_to fishes_path
  end

  private

  def set_fish
    @fish = Fish.find(params[:id])
  end

  def fish_params
    params.require(:fish).permit(:name, :price_per_week, :colour, :length,
     :fish_type_id, :available, :photo, :comment, :address)
  end
end
