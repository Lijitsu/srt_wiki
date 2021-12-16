class Admin::GuidesController < Admin::BaseController
  def index
    @guides = Guide.all
  end

  def new
    @guide = Guide.new
  end

  def edit
    @guide = Guide.find(params[:id])
  end

  def update
    @guide = Guide.find (params[:id])

    if @guide.update(guide_params)
      redirect_to @guide
    else
      render :edit
    end
  end

  def destroy
    @guide = Guide.find(params[:id])
    @guide.destroy

    redirect_to admin_guides_path
  end

  private

  def guide_params
    params.require(:guide).permit(:name, :revision, :category)
  end
end
