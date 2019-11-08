class WineriesController < ApplicationController
  def new
    @winery = Winery.new
  end

  def create 
    @winery = Winery.new(winery_params)
    if @winery.save
      redirect_to winery_path(@winery)
    else
      render :new
    end
  end

  def show 
    @winery = Winery.find_by(id: params[:id])
  end
  

  private

  def winery_params
    params.require(:winery).permit(:name, :location, :country)
  end
end
