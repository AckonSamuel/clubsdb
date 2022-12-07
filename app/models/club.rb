# frozen_string_literal: true

class Club < ApplicationRecord
  has_one :condition
  has_many :club_staffs
  has_many :club_students
  has_many :students, through: :club_students
  has_many :staffs, through: :club_staffs
  has_many :contacts
  has_many :addresses
end
