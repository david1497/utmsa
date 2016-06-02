class AddOrarToGrupes < ActiveRecord::Migration
  def change
    add_column :grupes, :orar, :text
  end
end
