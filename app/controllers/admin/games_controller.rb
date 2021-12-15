class Admin::GamesController < BaseController
  def index
    @games = Game.all
  end
  
  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find (params[:id])

    if @game.update(article_params)
      redirect_to @game
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to root_path
  end

  private

  def trick_params
    params.require(:game).permit(:name, :platform, :release_date)
  end
end
