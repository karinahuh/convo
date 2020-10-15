class RegisterController < ApplicationController
	def create
		@user = Register.new(user_params)
	        
                respond_to do |format|
		   if @user.save 
                        format.html { redirect-to  :action 'index', id: @user.id notice: 'Seja bem Vind@!' }
                        format.json { render :show, status: :created, location: @user }
                   else
                     format.html { render action: 'new' }
                     format.json { render json: @user.errors, status: :unprocessable_entity }
                   end
                end
        end
end

params.require(:user).permit(:nickname, :email, :password, :age, :gender)

