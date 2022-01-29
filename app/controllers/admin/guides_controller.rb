class Admin::GuidesController < Admin::BaseController
  def index
    @guides = Guide.all.includes(:category)
    @categories = Category.all
    @games = Game.all
  end

  def new
    @guide = Guide.new
  end

  def edit
    @guide = Guide.find(params[:id])
  end

  def update
    @guide = Guide.find(params[:id])

    if @guide.update(guide_params)
      redirect_to [:admin, @guide]
    else
      render :edit
    end
  end

  def create
    @guide = Guide.new(guide_params)
    if @guide.save
      redirect_to [:admin, @guide]
    else
      render :new
    end
  end

  def destroy
    @guide = Guide.find(params[:id])
    @guide.destroy

    redirect_to admin_guides_path
  end

  def show
    @guide = Guide.find(params[:id])
  end

  private

  def guide_params
    params.require(:guide).permit(:name, :revision, :category_id, :game_id, :content, :creator, :game_version)
  end

  def category_params
    params.require(:category).permit(:name, :overview, :platform, :rules, :game_id)
  end

  def game_params
    params.require(:game).permit(:name, :platform, :release_date, :series_id, :overview, game_tricks_attributes: [:trick_id])
  end
end
