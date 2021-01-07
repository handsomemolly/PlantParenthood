class NotesController < ApplicationController
  def new
    @note = Note.new
    @user_plants = @user.user_plants
  end

  def create
    @note = Note.create(note_params)
    if @note.valid?
      redirect_to @user
    else 
      flash[:errors] = @note.errors.full_messages
      redirect_to new_note_path
    end
  end

  private

  def note_params
    params.require(:note).permit(:user_plant_id, :add_care)
  end
end
