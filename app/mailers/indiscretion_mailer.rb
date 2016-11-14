class IndiscretionMailer < ApplicationMailer
	default from: "chut@nouslescac.fr"

	def indiscretion_collect(content)
		@content = content

		mail to: "adrien.mennillo@gmail.com", subject: "Chut : Une nouvelle indiscrétion est dans la boite"
	end


end
