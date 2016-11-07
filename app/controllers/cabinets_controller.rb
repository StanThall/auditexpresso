class CabinetsController < ApplicationController

	def up
		@cabinet = Cabinet.find(params[:id])
		@cabinet.rating +=1
		@cabinet.save
		session[:a_vote_up] = @cabinet.id
		respond_to do |format|
			format.json {render json: @cabinet.to_json(only: :rating)}
		end
	end

	def down
		@cabinet = Cabinet.find(params[:id])
		@cabinet.rating -=1
		@cabinet.save
		session[:a_vote_down] = @cabinet.id
		respond_to do |format|
			format.json {render json: @cabinet.to_json(only: :rating)}
		end
	end

end
