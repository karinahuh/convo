class RegisterController < ApplicationController
	def create
		@user = Register.new(user_params)
		
		if @user.save 
			redirect-to :action 'index', id: @user.id notice: 'Seja bem Vind@!'
		else 
			render action: 'new'
	end
end

params.require(:user).permit(:nickname, :email, :password, :age, :gender)

