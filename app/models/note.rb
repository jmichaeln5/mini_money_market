class Note < ApplicationRecord
  belongs_to :notable, polymorphic: true

  # def the_note
  # "#{:note} #{:content}"
  # end

end
