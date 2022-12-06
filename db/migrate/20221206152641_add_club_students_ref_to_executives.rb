class AddClubStudentsRefToExecutives < ActiveRecord::Migration[7.0]
  def change
    add_reference :executives, :club_students, null: false, foreign_key: true
  end
end
