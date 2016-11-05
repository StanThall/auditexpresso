class CabinetsController < ApplicationController

	def up
		session[:return_to] ||= request.referer
		#if session[:a_vote_up] == true
		#	respond_to do |format|
		#		format.js
		#	end
		#else
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating +=1
			@cabinet.save
			session[:a_vote_up] = true
			respond_to do |format|
				format.html {rtg: @cabinet.rating}
				format.js
				format.json {render json: @cabinet.to_json(only: :rating)}
			end
		#end
	end

	def down
		session[:return_to] ||= request.referer
		if session[:a_vote_down] == true
			respond_to do |format|
				format.js 
			end
		else
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating -=1
			@cabinet.save
			session[:a_vote_down] = true
			respond_to do |format|
				format.js
			end
		end
	end

end
