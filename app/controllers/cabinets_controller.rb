class CabinetsController < ApplicationController

	def up
		#if session[:a_vote_up] == true
		#	respond_to do |format|
		#		format.js
		#	end
		#else
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating +=1
			@cabinet.save
			#session[:a_vote_up] = true
			respond_to do |format|
				format.json {render json: @cabinet.to_json(only: :rating)}
			end

		#end
	end

	def down
			@cabinet = Cabinet.find(params[:id])
			@cabinet.rating -=1
			@cabinet.save
			#session[:a_vote_up] = true
			respond_to do |format|
				format.json {render json: @cabinet.to_json(only: :rating)}
			end
	end

end
