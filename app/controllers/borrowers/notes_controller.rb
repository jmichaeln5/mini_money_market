class Borrowers::NotesController < NotesController
  before_action :set_notable

    private

    def set_notable
      @notable = Borrower.find(params[:borrower_id])
    end

end
