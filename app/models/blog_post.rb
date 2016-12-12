class BlogPost < ApplicationRecord
	belongs_to :author
	has_many :tag_links
	has_many :tags, through: :tag_links
	has_many :references
	has_many :furthers
	has_many :songs
	accepts_nested_attributes_for :author, :tags, :references, :furthers, :songs
	validates_presence_of :title, :img_path, :content
	
	scope :filter_tag, ->(label){joins(:tags).where(tags: {label: label})}
	scope :filter_author, ->(nme){joins(:author).where(authors: {name: nme})}
	scope :filter_live, ->{where(live: :true)}

	def to_param
		self.slug
	end

end
