class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.includes(:trails).find(params[:id])
    @trip_total = @trip.total
  end
end
