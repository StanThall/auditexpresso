class TagLink < ApplicationRecord
	belongs_to :blog_post
	belongs_to :tag
end
