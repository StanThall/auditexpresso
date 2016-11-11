class BlogPost < ApplicationRecord
	belongs_to :author
	has_many :tag_links
	has_many :tags, through: :tag_links
	accepts_nested_attributes_for :author
	accepts_nested_attributes_for :tags

	
	scope :filter_tag, ->(label){joins(:tags).where(tags: {label: label})}
	scope :filter_author, ->(nme){joins(:author).where(authors: {name: nme})}




end
