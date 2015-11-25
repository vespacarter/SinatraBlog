require 'date'

class Post
	attr_reader :date, :title, :text, :sponsored
	def initialize(title, date, text,sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end