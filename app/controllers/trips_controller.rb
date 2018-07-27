class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.includes(:trails).find(params[:id])
    @trip_total = @trip.total
    @trip_average = @trip.average
    @trip_longest = @trip.longest
    @trip_shortest = @trip.shortest
  end
end
