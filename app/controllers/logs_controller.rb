class LogsController < ApplicationController
  http_basic_authenticate_with name: "pacetrader", password: "LAUre1986", except: :create

  def index
  	render 'index', layout: 'blogview'
  end

  def create
  	@log = Log.new(log_params)
    @log.session_id = session.id 
    @log.agent = request.user_agent
  	@log.save
    LogsMailer.video_finish(@log.page).deliver_now if @log.action_id == 3
  end

  private

  def log_params
  	params.permit(:action_id, :page, :from)
  end

end
