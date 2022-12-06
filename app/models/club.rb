class Club < ApplicationRecord
    has_one :condition
    has_many :clubs_member
    has_many :members, through: :clubs_member
    has_many :contacts
    has_many :addresses
end
