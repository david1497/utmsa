class CreateArticols < ActiveRecord::Migration
  def change
    create_table :articols do |t|
      t.text :name
      t.text :content
      t.string :avatar

      t.timestamps null: false
    end
  end
end
