# The public view controller for resources. Doesn't require things like CRUD, just viewing.
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
