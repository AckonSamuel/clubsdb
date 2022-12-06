class ClubStudent < ApplicationRecord
  belongs_to :clubs
  belongs_to :students
  has_many :executives
end
