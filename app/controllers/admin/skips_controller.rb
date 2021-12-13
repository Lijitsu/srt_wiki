class Admin::SkipsController < BaseController
  def new
    @skip = Skip.new
  end

  def edit
    @skip = Skip.find(params[:id])
  end

  def update
    @skip = Skip.find (params[:id])

    if @skip.update(article_params)
      redirect_to @skip
    else
      render :edit
    end
  end

  def destroy
    @skip = Skip.find(params[:id])
    @skip.destroy

    redirect_to root_path
  end

  private

  def trick_params
    params.require(:skip).permit(:name, :discoverer, :description, :video)
  end
end
