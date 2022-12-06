class AddContactRefToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :contacts, null: false, foreign_key: true
  end
end
