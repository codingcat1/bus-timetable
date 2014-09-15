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
    if @station.save
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(station_params)
      flash[:notice] = "Your Station has been updated!"
      redirect_to station_path(@station)
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.delete
    flash[:notice] = "#{@station.name} has been deleted!"
    redirect_to stations_path
  end

  private
  def station_params
    params.require(:station).permit(:name, :id)
  end
end
