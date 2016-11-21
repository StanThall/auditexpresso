class Strip < ApplicationRecord

	scope :index_pg, ->{order("created_at DESC").limit(10)}

	def to_param
		self.slug
	end

end
