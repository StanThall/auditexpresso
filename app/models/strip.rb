class Strip < ApplicationRecord
	validates_presence_of :title, :catch, :content
	scope :index_pg, ->{order("created_at DESC").limit(10)}

	def to_param
		self.slug
	end

end
