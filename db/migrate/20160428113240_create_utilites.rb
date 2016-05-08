class CreateUtilites < ActiveRecord::Migration
  def change
    create_table :utilites do |t|
      t.text :title
      t.string :avatar

      t.timestamps null: false
    end
  end
end
