class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :description, :link)
  end
end
