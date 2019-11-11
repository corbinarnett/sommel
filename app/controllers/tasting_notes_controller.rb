class TastingNotesController < ApplicationController
  before_action :set_tasting_note, only: [:show, :edit, :update, :destroy]

  def show 
  end

  def new
    @tasting_note = TastingNote.new
    @wines = Wine.all
  end

  def create
    #build new tasting_note instance for current user
    @tasting_note = current_user.tasting_notes.build(tasting_note_params)

    if @tasting_note.save
      redirect_to user_tasting_note_path(current_user,  @tasting_note)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tasting_note.update(tasting_note_params)
      redirect_to user_tasting_note_path(current_user,  @tasting_note)
    else
      render :edit
    end
  end

  def destroy
    @tasting_note.destroy
    redirect_to user_path(current_user)
  end



  private

  def tasting_note_params
    # "tasting_note"=>{"wine_id"=>"", "rating"=>"", "comment"=>""}
    params.require(:tasting_note).permit(:wine_id, :rating, :comment)
  end

  def set_tasting_note
    @tasting_note = current_user.tasting_notes.find_by(id: params[:id])
    redirect_to user_path(current_user) if !@tasting_note
  end
end
