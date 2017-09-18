class PedalsController < ApplicationController

  def index
    @pedals = Pedal.all
  end

  def new
    @pedal = Pedal.new
  end

  def create
    @pedal = Pedal.create!(pedal_params)
    redirect_to pedal_path(@pedal)
  end

  def show
    @pedal = Pedal.find(params[:id])
  end

  def edit
    @pedal = Pedal.find(params[:id])
  end

  def update
    @pedal = Pedal.find(params[:id])
    @pedal.update(pedal_params)
    redirect_to pedal_path(@pedal)
  end

  def destroy
    @pedal = Pedal.find(params[:id])
    @pedal.destroy
    redirect_to pedals_path
  end

  private
    def pedal_params
      params.require(:pedal).permit(:name, :photo_url)
    end
  end
