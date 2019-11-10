class WinesController < ApplicationController
  before_action :set_wine, only: [:show]
  def index 
    @wines = Wine.all
  end

  def new 
    @wine = Wine.new
  end

  def create 
    # build compared to new adds the newly created wine to the wines collection
    @wine = Wine.new(wine_params)
    # byebug
    if @wine.save
      redirect_to wine_path(@wine)
    else
      render :new
    end
  end

  def show
    # @wine = Wine.find_by(id: params[:id])
  end

private 

  def wine_params
    # "wine"=>{"name"=>"Pinot Noir", "vintage"=>"2014", "varietal"=>"Pinot "}
    params.require(:wine).permit(:name, :vintage, :producer_id)
  end

  def set_wine
    @wine = Wine.find_by(id: params[:id])
    redirect_to wines_path if !@wine
  end
end
