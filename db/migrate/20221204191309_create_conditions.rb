class CreateConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :conditions do |t|
      t.boolean :approved

      t.timestamps
    end
  end
end
