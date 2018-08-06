module ApplicationHelper
	# this allows devise forms to be opened in different controllers/views
	def resource_name_lender
    :lender
  end

  def resource_lender
    @resource ||= Lender.new
  end

  def devise_mapping_lender
    @devise_mapping ||= Devise.mappings[:lender]
  end

  # same thing as above but with borrowers
  def resource_name_borrower
    :borrower
  end

  def resource_borrower
    @resource ||= Borrower.new
  end

  def devise_mapping_borrower
    @devise_mapping ||= Devise.mappings[:borrower]
  end



	def borrower_columns
		Borrower.column_names[1..30]
	end


end
