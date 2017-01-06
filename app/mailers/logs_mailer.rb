class LogsMailer < ApplicationMailer
	default from: "contact@auditexpresso.net"

	def action_taken(actionID, page, agent, session)
		@actionID = actionID
		@page = page
		@agent = agent
		@session = session

		case @actionID
		when 3
			subject = "Video Vue !"
		when 6
			subject = "Popup !"
		when 7
			subject = "Popup fermée !"
		else
			subject = "Action Report !"
		end
		
		mail to: "adrien.mennillo@gmail.com", subject: subject
	end
end
