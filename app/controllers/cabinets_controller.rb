class CabinetsController < ApplicationController

	def up
		session[:return_to] ||= request.referer
		if session[:a_vote] == true
			respond_to do |format|
				format.html {redirect_to session.delete(:return_to), notice: "Vous avez déjà voté !"}
			end
		else
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating +=1
			@cabinet.save
			session[:a_vote] = true
			respond_to do |format|
				format.html {redirect_to session.delete(:return_to), notice: "Merci pour votre vote !"}
			end
		end

	end


end
