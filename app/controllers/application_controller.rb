class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
     before_action :configure_devise_parameters, if: :devise_controller?
  
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :description, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :email, :description, :password, :password_confirmation)}
  
    end
end
  