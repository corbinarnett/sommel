class WineriesController < ApplicationController
  def new
    @winery = Winery.new
  end
end
