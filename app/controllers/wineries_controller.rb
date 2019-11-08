class WineriesController < ApplicationController
  def new
    @winery = Winery.new
  end

  def create 
    @winery = current_user.wineries.build(winery_params)
    byebug
    if @winery.save
      redirect_to winery_path(@winery)
    else
      render :new
    end
  end

  

  private

  def winery_params
    params.require(:winery).permit(:name, :region_or_city, :country)
  end
end
