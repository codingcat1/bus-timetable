class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.create(station_params)
    redirect_to stations_path
  end

  private
  def station_params
    params.require(:station).permit(:name)
  end
end
