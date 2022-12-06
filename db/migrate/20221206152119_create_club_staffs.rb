class CreateClubStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :club_staffs do |t|
      t.references :clubs, null: false, foreign_key: true
      t.references :staffs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
