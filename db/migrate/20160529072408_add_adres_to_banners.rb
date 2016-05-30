class AddAdresToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :adres, :text
  end
end
