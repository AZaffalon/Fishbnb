class BookingsController < ApplicationController
  def index
    @fish = Fish.find(params[:fish_id])
    @bookings = Booking.where(@fish)
  end
end
