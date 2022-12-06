class AddClubsMembersRefToStaffs < ActiveRecord::Migration[7.0]
  def change
    add_reference :staffs, :clubs_members, null: false, foreign_key: true
  end
end
