class AddMembersRefToPatrons < ActiveRecord::Migration[7.0]
  def change
    add_reference :patrons, :members, null: false, foreign_key: true
  end
end
