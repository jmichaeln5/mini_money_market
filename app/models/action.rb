class Action < ApplicationRecord
  belongs_to :able, polymorphic: true
end
