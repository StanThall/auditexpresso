class BlogPost < ApplicationRecord
	belongs_to :author
	has_many :tag_links
	has_many :tags, through: :tag_links

	
	scope :filter, ->(label){joins(:tags).where(tags: {label: label})}





end
