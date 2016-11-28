class PagesController < ApplicationController
  def show
  	@pub = Pub.find(rand(1..6))
  	Log.new(action_id: 1, page: request.original_url, from: request.referer, session_id: session.id, agent: request.user_agent).save
  end
end
