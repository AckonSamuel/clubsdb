class Member < ApplicationRecord
    belongs_to :club
    has_many :executives
    has_many :patrons
end
