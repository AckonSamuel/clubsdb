class CreateExecutives < ActiveRecord::Migration[7.0]
  def change
    create_table :executives do |t|
      t.string :portfolio

      t.timestamps
    end
  end
end
