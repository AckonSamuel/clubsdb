class AddstatusRefToClub < ActiveRecord::Migration[7.0]
  def change
    add_reference :clubs, :status, null: false, foreign_key: true
  end
end
