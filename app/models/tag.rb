class Tag < ApplicationRecord
	has_many :tag_links
	has_many :blog_posts, through: :tag_links
end
