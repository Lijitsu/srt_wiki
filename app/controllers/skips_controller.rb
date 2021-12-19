class SkipsController < ApplicationController
  def index
    @skips = Skip.all
  end

  def show
    @skip = Skip.find(params[:id])
  end

  private

  def skip_params
    params.require(:skip).permit(:name, :discoverer, :description, :platform, :level_id, :game_id, :game_version)
  end
end
