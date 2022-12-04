class CreateProgrammes < ActiveRecord::Migration[7.0]
  def change
    create_table :programmes do |t|
      t.string :name

      t.timestamps
    end
  end
end
