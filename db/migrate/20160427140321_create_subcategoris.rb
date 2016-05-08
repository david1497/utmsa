class CreateSubcategoris < ActiveRecord::Migration
  def change
    create_table :subcategoris do |t|
      t.integer :categori_id
      t.text :name
      t.text :content
      t.string :avatar

      t.timestamps null: false
    end
  end
end
