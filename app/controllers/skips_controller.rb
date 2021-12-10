class SkipsController < ApplicationController
  def index
    @skips = Skip.all
  end

  def show
    @skip = Skip.find (params[:id])
  end
end
