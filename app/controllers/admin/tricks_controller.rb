class Admin::TricksController < Admin::BaseController
  def index
    @tricks = Trick.all
  end

  def new
    @trick = Trick.new
  end

  def edit
    @trick = Trick.find(params[:id])
  end

  def update
    @trick = Trick.find (params[:id])

    if @trick.update(trick_params)
      redirect_to [:admin, @trick]
    else
      render :edit
    end
  end

  def create
    @trick = Trick.new(trick_params)
    if @trick.save 
      redirect_to [:admin, @trick]
    else
      render :new
    end
  end

  def destroy
    @trick = Trick.find(params[:id])
    @trick.destroy

    redirect_to admin_tricks_path
  end

  def show
    @trick = Trick.find (params[:id])
  end

  private

  def trick_params
    params.require(:trick).permit(:name, :discoverer, :description, :game_version, :platform, game_tricks_attributes: [:trick_id])
  end
end
