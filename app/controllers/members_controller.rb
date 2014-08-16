class MembersController < ApplicationController
  def new
  	@member = Member.new
  end
  
  def create
  	@member = Member.new(member_params)
  	
  	@member.save
 		render 'tasks/index'
  end

  def index
  	@members = Member.all
  end

  def show
  	@member = Member.find(params[:id])
  end

  private
  	def member_params
  		params.require(:member).permit(:name, :email)
  	end
end
