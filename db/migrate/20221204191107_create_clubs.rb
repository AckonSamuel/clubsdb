class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :group
      t.integer :member_size
      t.integer :executive_size

      t.timestamps
    end
  end
end
