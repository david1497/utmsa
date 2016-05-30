class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :load_links
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:sign_up).push(:name, :lastname, :email, :password, :birth, :tel, :seria, :idnp, :adresa )
  end
  
  private

  def load_links
  	@categories = Category.all
    @banners = Banner.all
    @users = User.all
  end

end
