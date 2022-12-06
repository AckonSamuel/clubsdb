class Student < ApplicationRecord
    has_many :contacts
    has_many :programmes
end
