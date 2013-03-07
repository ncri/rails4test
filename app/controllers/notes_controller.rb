class NotesController < ApplicationController

  def index
  	@notes = Note.all
  end

  def create
  	Note.create!(note_params)
  	redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:note)
  end

end
