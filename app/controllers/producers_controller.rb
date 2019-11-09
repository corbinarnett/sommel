class ProducersController < ApplicationController
  def index
    @producers = Producer.all
  end
  
  def new
    @producer = Producer.new
  end

  def create 
    @producer = Producer.new(producer_params)
    byebug
    if @producer.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
  end

  def show 
    @producer = Producer.find_by(id: params[:id])
  end
  

  private

  def producer_params
    params.require(:producer).permit(:name, :location)
  end
end
