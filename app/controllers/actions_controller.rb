class ActionsController < ApplicationController

# ###### Each respective controller in folder of model within controller folder
# ### Notify
# ##            https://www.youtube.com/watch?v=qF51M95YnaA    @7:32

  def new
    @action = @actionable.actions.new
  end

  def create
    @action = @actionable.actions.new action_params
    @actionable.save
    redirect_to @action, notice: "Your Action has been created successfully."
  end

  # private

    def action_params
      params.require(:action).permit(:amount)
    end

end
