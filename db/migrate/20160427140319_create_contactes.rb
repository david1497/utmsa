class CreateContactes < ActiveRecord::Migration
  def change
    create_table :contactes do |t|
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
