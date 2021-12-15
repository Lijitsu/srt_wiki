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
      redirect_to @trick
    else
      render :edit
    end
  end

  def destroy
    @trick = Trick.find(params[:id])
    @trick.destroy

    redirect_to root_path
  end

  private

  def trick_params
    params.require(:trick).permit(:name, :discoverer, :description, :video)
  end
end
