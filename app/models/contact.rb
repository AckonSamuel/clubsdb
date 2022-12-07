# frozen_string_literal: true

class Contact < ApplicationRecord
  belongs_to :club
  belongs_to :staff
  belongs_to :student
end
