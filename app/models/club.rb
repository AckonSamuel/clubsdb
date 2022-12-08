# frozen_string_literal: true

class Club < ApplicationRecord
  has_many :club_staffs, dependent: :destroy
  has_many :club_students, dependent: :destroy
  has_many :students, through: :club_students
  has_many :staffs, through: :club_staffs
end
