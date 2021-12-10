class GameTricksController < ApplicationController

  def index
    @game_tricks = Game_Trick.all
  end

  def show
    @game_trick = Game_Trick.find (params[:id])
  end
end
