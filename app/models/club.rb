class Club < ApplicationRecord
    has_one :status
    has_many :members
    has_many :contacts
    has_many :patrons, through: :members, source: :staff
    has_many :addresses
    has_many :executives, through: :members, source: :student
end
