class TastingNotesController < ApplicationController

  def new
    @tasting_note = current_user.tasting_notes.build
    @wine = Wine.all
  end

  def create
    # "tasting_note"=>{"wine_id"=>"", "rating"=>"", "comment"=>""}
    # byebug
  end






  private

  def tasting_note_params

  end

  

  
end
