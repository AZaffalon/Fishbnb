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

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at)
  end
end
