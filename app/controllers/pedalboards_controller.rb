class PedalboardsController < ApplicationController
  # Nice clean controller code here. You can DRY some of this code up with before_action
  # http://guides.rubyonrails.org/action_controller_overview.html#filters
  # http://craftingruby.com/posts/2015/05/31/dont-use-before-action-to-load-data.html

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
    @pedalboard.update(pedalboard_params) # Add conditional handling for update like you have in the  create method above
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
