class MatchController < ApplicationController
    def match(preference_params)
        @usuario = User.where(gender: preference_params[gender]).and(User.where(min_age: preference_params[min_age])).and(User.where(max_age: preference_params[max_age]))
        respond_to do |format|
            if(@usuario)
                redirect_to chat_path
            else
                render js: "alert('Não foi possível encontrar um match para você :( ');"
            end
        end 
    end

    private
    def preference_params
       params.require(:preference).permit(:gender, :min_age, :max_age)
   end
end