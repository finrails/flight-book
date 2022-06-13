class FlightBooksController < ApplicationController
  def new
  end

  def index
    @flight = Flight.new

    if params[:flight]
      @future_flights = Flight.where(departure_airport_id: params[:flight][:departure_airport], arrival_airport_id: params[:flight][:arrival_airport], start_datetime: params[:flight][:departure_time])

      if @future_flights.exists?
        render partial: 'future_flights', locals: { future_flights: @future_flights }
      else
        redirect_to root_path
      end

    end

  end
end
