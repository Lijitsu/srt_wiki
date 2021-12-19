class TricksController < ApplicationController
  def index
    @tricks = Trick.all
  end

  def show
    @trick = Trick.find(params[:id])
  end

  private

  def trick_params
    params.require(:trick).permit(:name, :discoverer, :description, :game_version, :platform, game_tricks_attributes: [:trick_id])
  end
end
