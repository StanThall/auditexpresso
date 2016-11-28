class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_vote

#session initializers
def set_vote
	session[:a_vote_up] ||= false
	session[:a_vote_down] ||= false
end


end
