class Admin::SkipsController < Admin::BaseController
  def index
    @skips = Skip.all
  end

  def new
    @skip = Skip.new
  end

  def edit
    @skip = Skip.find(params[:id])
  end

  def update
    @skip = Skip.find (params[:id])

    if @skip.update(skip_params)
      redirect_to [:admin, @skip]
    else
      render :edit
    end
  end

  def create
    @skip = Skip.new(skip_params)
    if @skip.save 
      redirect_to [:admin, @skip]
    else
      render :new
    end
  end

  def destroy
    @skip = Skip.find(params[:id])
    @skip.destroy

    redirect_to admin_skips_path
  end

  def show
    @skip = Skip.find (params[:id])
  end

  private

  def skip_params
    params.require(:skip).permit(:name, :discoverer, :description, :platform, :level_id, :game_id, :game_version)
  end
end
