class PagesController < ApplicationController
  # before_action :authenticate_borrower! , only: [:borrower_dash]
  # before_action :authenticate_lender, only: [:lender_dash]

  def home
    @borrower = current_borrower
    @borrowers = Borrower.all

    @lender = current_lender

    if current_lender
      render 'pages/lender_dash'

    elsif current_borrower
      # redirect_to '/dashboard'
      render 'pages/borrower_dash'
    end
  end

  def login
  end

  def register
  end

  def borrower_dash
    @borrower = current_borrower
    @borrowers = Borrower.all
    # @empty_column = @borrower.borrower_columns[0].blank?

  end

  def lender_dash
    @lender = current_lender
    @lender_columns = Lender.column_names[1..13]

  end

  def borrower_step_2
  end

  def lender_step_2
  end

end
