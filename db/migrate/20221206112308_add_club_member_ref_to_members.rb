class AddClubMemberRefToMembers < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :clubs_members, null: false, foreign_key: true
  end
end
