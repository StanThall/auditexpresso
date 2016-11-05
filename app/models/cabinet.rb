class Cabinet < ApplicationRecord
	before_save :default_values

	def default_values
		self.rating ||= 0
	end

	def up
		self.rating +=1
	end

end
