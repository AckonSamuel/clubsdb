class AddContactRefToClub < ActiveRecord::Migration[7.0]
  def change
    add_reference :clubs, :contacts, null: false, foreign_key: true
  end
end
