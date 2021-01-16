class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :update, :destroy]
  before_action
  def index
    @fish = Fish.find(params[:fish_id])
    authorize @fish
    @bookings = Booking.where(@fish)
  end

  def new
    @fish = Fish.find(params[:fish_id])
    @booking  = Booking.new
    authorize @booking
  end

  def create
    @fish = Fish.find(params[:fish_id])
    @start_at = params[:booking][:start_at]
    @end_at = params[:booking][:end_at]
    @booking = Booking.new(start_at: @start_at, end_at: @end_at, fish: @fish, user: current_user)
    authorize @booking
    if @booking.save
      redirect_to fish_path(@fish)
    else
      render :new
    end
  end

  def edit
    @fish = Fish.find(params[:fish_id])
    authorize @booking
  end

  def update
    @fish = Fish.find(params[:fish_id])
    @booking.fish = @fish
    authorize @booking
    @booking.update(booking_params)

    redirect_to fish_path(@fish)
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to fish_path(@booking.fish)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
