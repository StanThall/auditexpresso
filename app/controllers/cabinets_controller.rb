class CabinetsController < ApplicationController

	def up
		session[:return_to] ||= request.referer
		if session[:a_vote_up] == true
			respond_to do |format|
				format.html {redirect_to session.delete(:return_to), notice: "Vous avez déjà voté pour un cabinet qui monte!"}
				format.js
			end
		else
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating +=1
			@cabinet.save
			session[:a_vote_up] = true
			respond_to do |format|
				format.html {redirect_to session.delete(:return_to), notice: "Merci pour votre vote !"}
				format.js
			end
		end
	end

	def down
		session[:return_to] ||= request.referer
		if session[:a_vote_down] == true
			respond_to do |format|
				format.html {redirect_to session.delete(:return_to), notice: "Vous avez déjà voté pour un cabinet qui descend!"}
				format.js
			end
		else
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating -=1
			@cabinet.save
			session[:a_vote_down] = true
			respond_to do |format|
				format.html {redirect_to session.delete(:return_to), notice: "Merci pour votre vote !"}
				format.js
			end
		end
	end

end
