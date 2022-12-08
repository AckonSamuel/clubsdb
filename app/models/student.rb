# frozen_string_literal: true

class Student < ApplicationRecord
  has_many :club_students, dependent: :destroy
  has_many :clubs, through: :club_students
end
