# frozen_string_literal: true

class ClubStudent < ApplicationRecord
  belongs_to :clubs
  belongs_to :students
  has_many :executives, dependent: :destroy
end
