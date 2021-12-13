class Admin::CategoriesController < BaseController
  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find (params[:id])

    if @category.update(article_params)
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to root_path
  end

  private

  def trick_params
    params.require(:category).permit(:name, :rules, :platform)
  end
end
