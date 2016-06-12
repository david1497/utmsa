class CreateSigurances < ActiveRecord::Migration
  def change
    create_table :sigurances do |t|
      t.string :nume
      t.string :prenume
      t.string :tel
      t.string :email
      t.text :content

      t.timestamps null: false
    end
  end
end
