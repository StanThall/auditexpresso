class BlogPost < ApplicationRecord
	belongs_to :author
	has_many :tag_links
	has_many :tags, through: :tag_links

end
