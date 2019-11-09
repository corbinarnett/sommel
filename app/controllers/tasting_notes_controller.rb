class TastingNotesController < ApplicationController

  def show 
    # @user = User.find_by(id: params[:user_id])
    @tasting_note = current_user.tasting_notes.find_by(id: params[:id])
  end

  def new
    @tasting_note = TastingNote.new
    @wines = Wine.all
  end

  def create
    # @user = current_user
    @tasting_note = current_user.tasting_notes.build(tasting_note_params)

    if @tasting_note.save
      redirect_to user_tasting_note_path(current_user,  @tasting_note)
    else
      render :new
    end
  end

  def edit
    @tasting_note = current_user.tasting_notes.find_by(id: params[:id])
  end

  def update
    @tasting_note = current_user.tasting_notes.find_by(id: params[:id])
    if @tasting_note.update(tasting_note_params)
      redirect_to user_tasting_note_path(current_user,  @tasting_note)
    else
      render :edit
    end
  end





  private

  def tasting_note_params
    # "tasting_note"=>{"wine_id"=>"", "rating"=>"", "comment"=>""}
    params.require(:tasting_note).permit(:wine_id, :rating, :comment)
  end

  

  
end
