class PedalboardsController < ApplicationController

  def index
    @pedalboards = Pedalboard.all
  end

  def new
    @pedalboard = Pedalboard.new
  end

  def create
    @pedalboard = Pedalboard.create!(pedalboard_params)
    if @pedalboard.save
      flash[:notice] = 'Pedalboard was successfully created!'
    redirect_to pedalboard_path(@pedalboard)
  end
end

  def show
    @pedalboard = Pedalboard.find(params[:id])
  end

  def edit
    @pedalboard = Pedalboard.find(params[:id])
  end

  def update
    @pedalboard = Pedalboard.find(params[:id])
    @pedalboard.update(pedalboard_params)
    redirect_to pedalboard_path(@pedalboard), notice: 'Pedalboard was updated!'
  end

  def destroy
    @pedalboard = Pedalboard.find(params[:id])
    @pedalboard.destroy
    redirect_to pedalboards_path, alert: 'Pedalboard has been obliterated!'
  end

  private
    def pedalboard_params
      params.require(:pedalboard).permit(:name, :photo_url)
    end
  end
