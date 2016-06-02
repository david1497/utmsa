class AddCategAndPriceToComments < ActiveRecord::Migration
  def change
    add_column :comments, :price, :string
    add_column :comments, :categ, :boolean
  end
end
