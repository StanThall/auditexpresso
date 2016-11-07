class CabinetsController < ApplicationController

	def up
		@cabinet = Cabinet.find(params[:id])
		@cabinet.rating +=1
		@cabinet.save
		@cabinet = check_rank(@cabinet)
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
		@cabinet = check_rank(@cabinet)
		@cabinet.save
		session[:a_vote_down] = @cabinet.id
		respond_to do |format|
			format.json {render json: @cabinet.to_json(only: :rating)}
		end
	end

	private

	def check_rank(cabinet)
		ranking = Cabinet.all.sort_by{|cab| [cab[:rating], cab[:s_name]]}.reverse!
		curr_rank = ranking.index{|cab| cab.id == cabinet.id}

		if cabinet.rank_last == nil
			cabinet.rank_last = curr_rank
			cabinet.rank_change = 0
		elsif cabinet.rank_last == curr_rank
			cabinet.rank_change = 0
		else
			if cabinet.rank_last>curr_rank
				cabinet.rank_change = 1
			else 
				cabinet.rank_change = -1
			end
			cabinet.rank_last = curr_rank
			cabinet.rank_change_time = Time.now
		end
		return cabinet 
	end

end
