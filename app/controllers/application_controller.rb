class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :language, :nickname, :email, :contributor])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:photo])
  end
end
