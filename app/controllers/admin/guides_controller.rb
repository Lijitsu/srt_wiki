class Admin::GuidesController < BaseController
  def new
    @guide = Guide.new
  end

  def edit
    @guide = Guide.find(params[:id])
  end

  def update
    @guide = Guide.find (params[:id])

    if @guide.update(article_params)
      redirect_to @guide
    else
      render :edit
    end
  end

  def destroy
    @guide = Guide.find(params[:id])
    @guide.destroy

    redirect_to root_path
  end

  private

  def trick_params
    params.require(:guide).permit(:name, :revision)
  end
end
