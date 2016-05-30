module ApplicationHelper

  def load_ban
    @banners = Banner.all
  end

end
