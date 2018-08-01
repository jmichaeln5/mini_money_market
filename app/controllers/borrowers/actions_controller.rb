class Borrowers::ActionsController <  ActionsController
  before_action :set_action

  # private

    def set_action
      @actionable = Borrower.find(params[:borrower_id])
    end

end
