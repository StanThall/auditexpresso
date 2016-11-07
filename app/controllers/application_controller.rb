class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :get_session_vars

#session initializers
def get_session_vars
	session[:a_vote_up] ||= false
	session[:a_vote_down] ||= false
end


end
