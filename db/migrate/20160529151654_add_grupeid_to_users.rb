class AddGrupeidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grupe_id, :integer
  end
end
