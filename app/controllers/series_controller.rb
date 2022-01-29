# The public view controller for series. Doesn't require things like CRUD, just viewing.
class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def show
    @series = Series.find(params[:id])
  end

  private

  def series_params
    params.require(:series).permit(:name, :game)
  end
end
