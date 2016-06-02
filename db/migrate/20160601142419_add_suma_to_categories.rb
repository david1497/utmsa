class AddSumaToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :pret, :integer
  end
end
