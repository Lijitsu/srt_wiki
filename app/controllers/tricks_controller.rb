class TricksController < ApplicationController
  def index
    @tricks = Trick.all
  end

  def show
    @trick = Trick.find (params[:id])
  end
end
