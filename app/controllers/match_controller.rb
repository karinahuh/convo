class MatchController < ApplicationController    
    protect_from_forgery except: :match
    def match
		user = User.where('gender = ?  AND  age BETWEEN ? AND ?', params[:gender], params[:min_age], params[:max_age]).first
		if user
			respond_to do |format|
				format.html {redirect_to chat_path}
				format.js {render :js => "window.location.href='"+chat_path+"'"}
			end
		else
			render js: "alert('Não foi possível encontrar um match para você :( ');"
		end
	end
end