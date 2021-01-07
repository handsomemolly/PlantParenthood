class Note < ApplicationRecord
  belongs_to :user_plant

  validates(:add_care, { :length => { :minimum => 10 } })
end
