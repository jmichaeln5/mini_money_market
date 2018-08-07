module PagesHelper

  def show_non_blank_field(label, value)
    # "#{label} #{h value}""<br>".html_safe if !value.blank?
    "#{label} #{h value}""<br>".html_safe if value.present?
  end

  # def borrower_columns
  #   Borrower.column_names[1..13]
  # end

end
