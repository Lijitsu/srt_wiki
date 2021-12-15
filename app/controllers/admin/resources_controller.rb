class Admin::ResourcesController < Admin::BaseController
  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find (params[:id])

    if @resource.update(resource_params)
      redirect_to @resource
    else
      render :edit
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy

    redirect_to root_path
  end

  private

  def resource_params
    params.require(:resource).permit(:name)
  end
end
