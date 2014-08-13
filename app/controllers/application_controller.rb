class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

	private
<<<<<<< HEAD
		def current_user
		  @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
		end
=======

	def current_user
	  @current_user ||= User.where("auth_token =?", cookies[:auth_token]).first if cookies[:auth_token]
	end
>>>>>>> develop
end
