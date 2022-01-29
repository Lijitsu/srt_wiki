# The public view controller for categories. Doesn't require things like CRUD, just viewing.
class CategoriesController < ApplicationController
  # The duplicated code here (from the games controller) is needed to separate the categories by game
  # on the category index page.
  def index
    @categories = Category.all.includes(:game)
    @games = Game.all
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :overview, :platform, :rules, :game_id)
  end

  def game_params
    params.require(:game).permit(:name, :platform, :release_date, :series_id, :overview, game_tricks_attributes: [:trick_id])
  end
end
