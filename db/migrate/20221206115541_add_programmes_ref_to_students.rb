# frozen_string_literal: true

class AddProgrammesRefToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :programmes, null: false, foreign_key: true
  end
end
