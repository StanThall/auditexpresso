class Author < ApplicationRecord
	has_many :blog_posts
	validates_presence_of :name

	scope :scoop, ->(name){joins(:blog_posts).where(blog_posts: {author: {name: name}})}

end
