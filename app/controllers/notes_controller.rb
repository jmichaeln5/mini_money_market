class NotesController < ApplicationController

  def new
    @note = @notable.notes.new
  end

  def create
    @note = @notable.notes.new note_params
    @notable.save
    redirect_to @notable, notice: "Your note has been requested."

    # redirect_to pages_borrower_step_2_path, notice: "Your note has been requested."
  end


  private

    def note_params
      params.require(:note).permit(:content)
    end


end
