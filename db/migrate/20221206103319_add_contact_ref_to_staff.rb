class AddContactRefToStaff < ActiveRecord::Migration[7.0]
  def change
    add_reference :staffs, :contacts, null: false, foreign_key: true
  end
end
