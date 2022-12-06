class AddAddressRefToClub < ActiveRecord::Migration[7.0]
  def change
    add_reference :clubs, :addresses, null: false, foreign_key: true
  end
end
