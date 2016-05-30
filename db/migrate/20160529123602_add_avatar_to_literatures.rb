class AddAvatarToLiteratures < ActiveRecord::Migration
  def change
    add_column :literatures, :avatar, :string
  end
end
