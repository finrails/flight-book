class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Congratulations! You have made a booking."
      redirect_to root_path
    else
      flash[:alert] = "Wait... Something goes wrong, try do thats again."
      redirect_to flight_books_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
