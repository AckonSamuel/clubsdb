class ClubStudent < ApplicationRecord
  belongs_to :clubs
  belongs_to :students
end
