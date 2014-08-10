class SessionsController < ApplicationController
  def new

  end
  
  def create
	  user = User.authenticate(params[:name], params[:password])
	  if user
	  	if params[:remember_me]
	  		cookies.permanent[:auth_token] = user.auth_token
	  	else
	  		cookies[:auth_token] = user.auth_token
	  	end
	    
	    redirect_to users_path
	  else
	    flash.now.alert = "Invalid name or password"
	    render "new"
	  end
	end

	def destroy
	  cookies.delete(:auth_token)
	  redirect_to root_url, :notice => "Logged out!"
	end

end
