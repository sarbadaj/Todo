class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to users_path, :notice => "Signed up"
  	else
  	render "new"
  	end	
  end

  def index
  	@user = User.all
  end

  private
	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :confirm_password)	
	  end
end
