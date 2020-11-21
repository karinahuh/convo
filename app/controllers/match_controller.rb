class MatchController < ApplicationController    
    protect_from_forgery except: :match
    def match
		user = User.where('gender = ?  AND  age BETWEEN ? AND ?', params[:gender], params[:min_age], params[:max_age]).first
		if user 
			render js: "alert('Foi possível encontrar um match para você :) ');"
		else
			render js: "alert('Não foi possível encontrar um match para você :( ');"
		end
	end 
end