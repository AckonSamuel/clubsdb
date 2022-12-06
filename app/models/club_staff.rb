class ClubStaff < ApplicationRecord
  belongs_to :clubs
  belongs_to :staffs
  has_many :patrons
end
