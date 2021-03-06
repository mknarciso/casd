class ApplicationController < ActionController::Base
 # before_filter :set_mailer_host
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #ef after_sign_out_path_for(resource_or_scope)
  #  new_user_session_path
  #end
  
 # def set_mailer_host
  #  ActionMailer::Base.default_url_options[:host] ="localhost:3000"
#  end
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    update_attrs = [:password, :password_confirmation, :current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end
  
  def require_admin
      redirect_to(root_url) unless (current_user && current_user.admin?)
  end
  
  def require_user
      redirect_to(root_url) unless (current_user)
  end
  
  def after_invite_path_for(resource)
    users_path
  end
end
