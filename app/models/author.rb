class Author < ApplicationRecord
	has_many :blog_posts
	validates_presence_of :name

	

end
