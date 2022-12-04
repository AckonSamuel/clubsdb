class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :venue
      t.string :available_days
      t.string :available_time

      t.timestamps
    end
  end
end
