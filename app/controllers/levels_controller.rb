class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def show
    @level = Level.find(params[:id])
  end

  private

  def level_params
    params.require(:level).permit(:name, :description, :game_id)
  end
end
