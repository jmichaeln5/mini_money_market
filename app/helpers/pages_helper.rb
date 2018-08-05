module PagesHelper

  def show_non_blank_field(label, value)
   "#{label} #{h value}""<br>".html_safe if !value.blank?
  end

  def show_blank_field(label, value)
    # "#{label}: #{h value}" if !value.blank?
    ## "#{label}: #{h value}".text_field if value == nil

    ## "#{label}: #{h value}".text_field if value.blank? #undefined method `text_field' for "Street: ":String

    ## "#{label}: #{h value}".text_field if value[1].blank?
    "#{label} #{h value}".text_field if value == ""

  end




end
