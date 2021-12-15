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
    @level = Level.find (params[:id])

    if @level.update(level_params)
      redirect_to @level
    else
      render :edit
    end
  end

  def destroy
    @level = Level.find(params[:id])
    @level.destroy

    redirect_to root_path
  end

  private

  def level_params
    params.require(:level).permit(:name, :description, :overhead)
  end
end
