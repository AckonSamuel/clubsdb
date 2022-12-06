class Student < ApplicationRecord
    has_many :contacts
    belongs_to :clubs
    has_many :programmes
end
