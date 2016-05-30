class AddIdnpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :idnp, :string
  end
end
