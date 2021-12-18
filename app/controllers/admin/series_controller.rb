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
    @series = Series.find(params[:id])

    if @series.update(series_params)
      redirect_to [:admin, @series]
    else
      render :edit
    end
  end

  def create
    @series = Series.new(series_params)
    if @series.save
      redirect_to [:admin, @series]
    else
      render :new
    end
  end

  def destroy
    @series = Series.find(params[:id])
    @series.destroy

    redirect_to admin_series_path
  end

  def show
    @series = Series.find(params[:id])
  end

  private

  def series_params
    params.require(:series).permit(:name, :game)
  end
end
