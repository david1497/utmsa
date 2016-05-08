class CreateLiteratures < ActiveRecord::Migration
  def change
    create_table :literatures do |t|
      t.text :titlu
      t.text :content

      t.timestamps null: false
    end
  end
end
