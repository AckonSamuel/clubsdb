# frozen_string_literal: true

class CreatePatrons < ActiveRecord::Migration[7.0]
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
