class TastingNotesController < ApplicationController

  def new
    @tasting_note = current_user.tasting_notes.build
  end






  private

  def tasting_note_params

  end

  
end
