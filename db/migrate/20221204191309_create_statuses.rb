class Createstatus < ActiveRecord::Migration[7.0]
  def change
    create_table :status do |t|
      t.boolean :approved

      t.timestamps
    end
  end
end
