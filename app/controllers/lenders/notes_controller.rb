class Lenders::NotesController < NotesController
  before_action :set_notable


    private

    def set_notable
      @notable = Lender.find(params[:lender_id])
    end

end
