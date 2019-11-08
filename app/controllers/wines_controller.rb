class WinesController < ApplicationController
  def index 
    @wines = Wine.all
  end

  def new 
    @wine = Wine.new
  end
end
