class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    binding.pry
    if @booking.save
      redirect_to root_path
    else
      redirect_to flight_books_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
