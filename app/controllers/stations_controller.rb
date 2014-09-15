class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def show
    @station = Station.find(params[:id])
  end

  def create
    @station = Station.create(station_params)
    redirect_to stations_path
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    @station.update(station_params)
    flash[:notice] = "Your Station has been updated!"
    redirect_to station_path(@station)
  end

  private
  def station_params
    params.require(:station).permit(:name, :id)
  end
end
