# frozen_string_literal: true

class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :group
      t.integer :member_size
      t.integer :executive_size
      t.string :email
      t.string :telephone_number
      t.boolean :approved
      t.string :meeting_places
      t.string :meeting_days
      t.string :meeting_times

      t.timestamps
    end
  end
end
