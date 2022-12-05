class Student < ApplicationRecord
    has_many :contacts
    belongs_to :clubs
end
