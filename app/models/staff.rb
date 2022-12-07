# frozen_string_literal: true

class Staff < ApplicationRecord
  has_many :contacts
  has_many :club_staffs
  has_many :clubs, through: :club_staffs
end
