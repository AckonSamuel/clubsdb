class AddMembersRefToExecutives < ActiveRecord::Migration[7.0]
  def change
    add_reference :executives, :members, null: false, foreign_key: true
  end
end
