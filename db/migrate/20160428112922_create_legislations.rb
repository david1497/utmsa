class CreateLegislations < ActiveRecord::Migration
  def change
    create_table :legislations do |t|
      t.text :titlu
      t.string :avatar

      t.timestamps null: false
    end
  end
end
