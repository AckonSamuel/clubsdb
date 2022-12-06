class CreateCondition < ActiveRecord::Migration[7.0]
  def change
    create_table :condition do |t|
      t.boolean :approved

      t.timestamps
    end
  end
end
