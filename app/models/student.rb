class Student < ApplicationRecord
    has_many :contacts
    has_many :programmes
    has_many :club_students
    has_many :clubs, through: :club_students
end
