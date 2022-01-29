class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all.includes(:game)
    @games = Game.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to [:admin, @category]
    else
      render :edit
    end
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, @category]
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to admin_categories_path
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :overview, :platform, :rules, :game_id)
  end

  def game_params
    params.require(:game).permit(:name, :platform, :release_date, :series_id, :overview, game_tricks_attributes: [:trick_id])
  end
end
