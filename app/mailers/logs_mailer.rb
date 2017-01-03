class LogsMailer < ApplicationMailer
	default from: "contact@auditexpresso.net"

	def video_finish(page, agent, session)
		@page = page
		@agent = agent
		@session = session
		mail to: "adrien.mennillo@gmail.com", subject: "Une vidéo vient d'être vue ! "
	end
end
