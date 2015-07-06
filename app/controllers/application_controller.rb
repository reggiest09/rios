class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
 protected
 def configure_permited_parameters
devise_paramater_sanitizer.for(:sign_up) {|u| u.permit(:name, :stripe_card_token. :email, :password, :password_conformation)}

 end

end


