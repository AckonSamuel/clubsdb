class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.boolean :approved

      t.timestamps
    end
  end
end
