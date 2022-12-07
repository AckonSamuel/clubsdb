# frozen_string_literal: true

class AddConditionRefToClub < ActiveRecord::Migration[7.0]
  def change
    add_reference :clubs, :condition, null: false, foreign_key: true, default: ''
  end
end
