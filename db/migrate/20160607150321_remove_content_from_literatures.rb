class RemoveContentFromLiteratures < ActiveRecord::Migration
  def change
    remove_column :literatures, :content, :text
  end
end
