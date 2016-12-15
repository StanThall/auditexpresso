class CommentsMailer < ApplicationMailer
	default from: "comment@auditexpresso.net"

	def comment_collect(content, from="undisclosed", email="undisclosed", on)
		@content = content
		@from = from
		@email = email
		@on = on

		mail to: "adrien.mennillo@gmail.com", subject: "NLC - Nouveau commentaire sur " << on 
	end


end
