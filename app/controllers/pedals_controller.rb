class PedalsController < ApplicationController

  def index
    @pedals = Pedal.all
  end

  def new
    @pedal = Pedal.new
  end

  def create
    @pedal = Pedal.create!(pedal_params)
    if @pedal.save
      flash[:notice] = 'Pedal was successfully created!'
      redirect_to pedal_path(@pedal)
    end
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
    redirect_to pedal_path(@pedal), notice: 'Pedal was updated!'
  end

  def destroy
    @pedal = Pedal.find(params[:id])
    @pedal.destroy
    redirect_to pedals_path, alert: 'Pedal has been obliterated!'
  end

  private
    def pedal_params
      params.require(:pedal).permit(:name, :style, :photo_url, :pedalboard_id)
    end
  end
