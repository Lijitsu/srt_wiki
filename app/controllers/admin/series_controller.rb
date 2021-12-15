class Admin::SeriesController < Admin::BaseController
  def index
    @series = Series.all
  end

  def new
    @series = Series.new
  end

  def edit
    @series = Series.find(params[:id])
  end

  def update
    @series = Series.find (params[:id])

    if @series.update(series_params)
      redirect_to @series
    else
      render :edit
    end
  end

  def destroy
    @series = Series.find(params[:id])
    @series.destroy

    redirect_to root_path
  end

  private

  def series_params
    params.require(:series).permit(:name, :game)
  end
end
