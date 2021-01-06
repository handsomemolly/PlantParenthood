class NotesController < ApplicationController
  def new
    @note = Note.new
    @user_plants = @user.user_plants
  end

  def create
    @note = Note.create(note_params)
    redirect_to @user
  end

  private

  def note_params
    params.require(:note).permit(:user_plant_id, :add_care)
  end
end
