class GuidesController < ApplicationController
  def index
    @guides = Guide.all
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

  def guide_params
    params.require(:guide).permit(:name, :revision, :category_id, :game_id, :content, :creator, :game_version)
  end
end
