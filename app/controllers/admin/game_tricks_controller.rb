class Admin::GameTricksController < BaseController
  def new
    @game_trick = Game_Trick.new
  end

  def edit
    @game_trick = Game_Trick.find(params[:id])
  end

  def update
    @game_trick = Game_Trick.find (params[:id])

    if @game_trick.update(article_params)
      redirect_to @game_trick
    else
      render :edit
    end
  end

  def destroy
    @game_trick = Game_Trick.find(params[:id])
    @game_trick.destroy

    redirect_to root_path
  end

  private

  def trick_params
    params.require(:game_trick).permit(:name, :discoverer, :description, :video)
  end
end
