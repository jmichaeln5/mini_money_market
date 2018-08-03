class PagesController < ApplicationController
  def home
    if current_lender
      redirect_to current_lender
    elsif current_borrower
      redirect_to current_borrower
    end
  end

  def login
  end

  def register
  end

  def borrower_dash
    @borrower = current_borrower
  end

  def lender_dash
    @lender = current_lender
  end

  def borrower_step_2
  end

  def lender_step_2
  end

end
