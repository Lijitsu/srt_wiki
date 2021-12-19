class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:name, :platform, :release_date, :series_id, :overview, game_tricks_attributes: [:trick_id])
  end
end
