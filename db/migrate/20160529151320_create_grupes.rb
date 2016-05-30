class CreateGrupes < ActiveRecord::Migration
  def change
    create_table :grupes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
