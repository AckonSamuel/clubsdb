class Member < ApplicationRecord
    has_many :clubs_member
    has_many :clubs, through: :clubs_member
end
