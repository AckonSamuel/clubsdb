# frozen_string_literal: true

class Staff < ApplicationRecord
  has_many :club_staffs, dependent: :destroy
  has_many :clubs, through: :club_staffs
end
