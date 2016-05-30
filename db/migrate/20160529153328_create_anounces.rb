class CreateAnounces < ActiveRecord::Migration
  def change
    create_table :anounces do |t|
      t.string :titlu
      t.string :content
      t.integer :grupe_id

      t.timestamps null: false
    end
  end
end
