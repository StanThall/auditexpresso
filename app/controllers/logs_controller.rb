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
    
    #LogsMailer.action_taken(@log.action_id, @log.page, @log.agent, @log.session_id).deliver_now if @log.action_id == 3 || @log.action_id == 6 || @log.action_id == 7

    info = " \n/ *sur:* " + @log.page + " / *par:* " + @log.session_id + " / *device:* " + @log.agent

    client = Slack::Web::Client.new(user_agent: 'Slack Ruby Client/1.0')

    case @log.action_id
    when 3
      client.chat_postMessage(channel: '#auditexpresso_logs', text: ':+1: *Video Vue !*' + info, as_user: true)
    end

  end

  private

  def log_params
  	params.permit(:action_id, :page, :from)
  end

end
