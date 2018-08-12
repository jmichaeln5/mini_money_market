class PagesController < ApplicationController
  before_action :authenticate_borrower! , only: [:borrower_dash, :loans]
  before_action :authenticate_lender! , only: [:lender_dash, :investments]

  def home
    @borrower = current_borrower
    @borrowers = Borrower.all
    @lender = current_lender

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

  def investments
    @lenders = Lender.all
    @lender = current_lender

    @borrowers = Borrower.all

    @notes = Note.all.to_a
    @notable = current_lender
  end

  def loans
    @lenders = Lender.all
    @lender = current_lender

    @borrowers = Borrower.all
    @borrower = current_borrower

    @notes = Note.all.to_a
    @notable = current_borrower
  end

  def borrower_step_2
  end

  def lender_step_2
  end

end
