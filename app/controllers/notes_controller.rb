class NotesController < ApplicationController

  def new
    @note = @notable.notes.new
  end

  def create

    if current_lender
      @note = @notable.notes.new note_params
      @notable.save
      redirect_to investments_path , notice: "Your request has been sent."
    elsif current_borrower
        @note = @notable.notes.new note_params
        @notable.save
        redirect_to loans_path , notice: "Your request has been sent."
    end

  end

  def index
    @lenders = Lender.all
    @borrowers = Borrower.all
    @notes = Note.all.to_a
  end

  def destroy
    # @note.notable.destroy
  end

  private

    def note_params
      params.require(:note).permit(:content)
    end


end
