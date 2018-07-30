class PagesController < ApplicationController
  def home
    if current_lender
      redirect_to pages_lender_dash_path
    elsif current_borrower
      redirect_to pages_borrower_dash_path
    end
  end

  def login
  end

  def register
  end

  def borrow_dash
  end

  def lender_dash
  end

  def borrower_step_2
  end

  def lender_step_2
  end

end
