class SessionsController < ApplicationController
  def new
	@user = User.new
  end
  def create
   user = User.find_by_nickname(params[:nickname])
   if user && user.authenticate(params[:password])
	session[:user_id] = user.id
	redirect_to root_url, notice: "Logged in!"
   else
	flash.now[:alert] = "Nickname or password is invalid"
	render "new"
   end
  end
  def show
  end
  def destroy
   session[:user_id] = nil
   redirect_to root_url, notice: "Logged out!"
  end
end
