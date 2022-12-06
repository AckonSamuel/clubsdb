class CreateClubStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :club_students do |t|
      t.references :clubs, null: false, foreign_key: true
      t.references :students, null: false, foreign_key: true

      t.timestamps
    end
  end
end
