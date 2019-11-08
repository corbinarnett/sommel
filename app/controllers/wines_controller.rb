class WinesController < ApplicationController
  def index 
    @wines = Wine.all
  end

  def new 
    @wine = current_user.wines.build
  end

  def create 
    # build compared to new adds the newly created wine to the wines collection
    @wine = current_user.wines.new(wine_params)
    # byebug
    if @wine.save
      redirect_to wine_path(@wine)
    else
      render :new
    end
  end

  def show
    @wine = Wine.find_by(id: params[:id])
  end


  private 

  def wine_params
    # "wine"=>{"name"=>"Pinot Noir", "vintage"=>"2014", "varietal"=>"Pinot "}
    params.require(:wine).permit(:name, :vintage, :varietal)
  end
end
