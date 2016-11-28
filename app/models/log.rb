class Log < ApplicationRecord
	belongs_to :action 
	accepts_nested_attributes_for :action
	
end
