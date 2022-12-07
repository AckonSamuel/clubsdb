# frozen_string_literal: true

class Address < ApplicationRecord
  belongs_to :club
  belongs_to :student
  belongs_to :staff
end
