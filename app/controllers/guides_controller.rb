# The public view controller for guides. Doesn't require things like CRUD, just viewing.
class GuidesController < ApplicationController
  # The duplicated code here (from the game & category controllers) is needed to separate the guides by
  # game & category on the guide index page.
  def index
    @guides = Guide.all.includes(:category)
    @categories = Category.all
    @games = Game.all
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

  def guide_params
    params.require(:guide).permit(:name, :revision, :category_id, :game_id, :content, :creator, :game_version)
  end

  def category_params
    params.require(:category).permit(:name, :overview, :platform, :rules, :game_id)
  end

  def game_params
    params.require(:game).permit(:name, :platform, :release_date, :series_id, :overview, game_tricks_attributes: [:trick_id])
  end
end
