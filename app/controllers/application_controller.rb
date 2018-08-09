class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    # current_user_path
    if current_lender
      pages_lender_dash_path
    elsif current_borrower
      pages_borrower_dash_path
    end
  end

end
