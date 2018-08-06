class LendersRegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:lender).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:lender).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
