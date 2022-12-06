class AddClubStaffsRefToPatrons < ActiveRecord::Migration[7.0]
  def change
    add_reference :patrons, :club_staffs, null: false, foreign_key: true
  end
end
