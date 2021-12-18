class Admin::LevelsController < Admin::BaseController
  def index
    @levels = Level.all
  end

  def new
    @level = Level.new
  end

  def edit
    @level = Level.find(params[:id])
  end

  def update
    @level = Level.find(params[:id])

    if @level.update(level_params)
      redirect_to [:admin, @level]
    else
      render :edit
    end
  end

  def create
    @level = Level.new(level_params)
    if @level.save
      redirect_to [:admin, @level]
    else
      render :new
    end
  end

  def destroy
    @level = Level.find(params[:id])
    @level.destroy

    redirect_to admin_levels_path
  end

  def show
    @level = Level.find(params[:id])
  end

  private

  def level_params
    params.require(:level).permit(:name, :description, :game_id)
  end
end
