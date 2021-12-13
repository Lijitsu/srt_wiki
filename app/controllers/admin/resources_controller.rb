class Admin::ResourcesController < BaseController
  def new
    @resource = Resource.new
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find (params[:id])

    if @resource.update(article_params)
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

  def trick_params
    params.require(:resource).permit(:name)
  end
end
