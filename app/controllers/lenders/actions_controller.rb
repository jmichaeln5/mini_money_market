class Lenders::ActionsController < ActionsController
  before_action :set_action

  # private

    def set_action
      @actionable = Lender.find(params[:lender_id])
    end

end
