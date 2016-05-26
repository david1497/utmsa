class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nume, :string
    add_column :users, :prenume, :string
    add_column :users, :birth, :datetime
    add_column :users, :idnp, :integer
    add_column :users, :seria, :string
    add_column :users, :adresa, :text
    add_column :users, :avatar, :string
    add_column :users, :tel, :string
  end
end
