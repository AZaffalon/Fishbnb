class BookingsController < ApplicationController
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
    @booking = Booking.new(booking_params)
    @fish = Fish.find(params[:fish_id])
    @user = current_user
    @booking.fish = @fish
    authorize @booking.fish
    @booking.save
    redirect_to fish_path(@fish)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
