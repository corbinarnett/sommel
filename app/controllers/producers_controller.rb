class ProducersController < ApplicationController
  before_action :set_producer, only: [:show]
  
  def index
    @producers = Producer.all
  end
  
  def new
    @producer = Producer.new
  end

  def create 
    @producer = Producer.new(producer_params)
    # byebug
    if @producer.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
  end

  def show 
  end
  

  private

  def producer_params
    params.require(:producer).permit(:name, :location)
  end

  def set_producer
    @producer = Producer.find_by(id: params[:id])
    redirect_to producers_path if !@producer
  end
end
