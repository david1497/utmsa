class AddContentToCategoris < ActiveRecord::Migration
  def change
    add_column :categoris, :content, :text
  end
end
