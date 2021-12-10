class SeriesController < ApplicationController

  def index
    @series_list = Series.all
  end


  def show
    @series = Series.find(params [:id])
    
  end

end
