class Admin::GamesController < Admin::BaseController
  def index
    @games = Game.all
  end

  def trick_index
    @tricks = Trick.all
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      redirect_to [:admin, @game]
    else
      render :edit
    end
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to [:admin, @game]
    else
      render :new
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    redirect_to admin_games_path
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:name, :platform, :release_date, :series_id, :overview, game_tricks_attributes: [:trick_id])
  end
end
