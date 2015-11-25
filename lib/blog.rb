require 'date'

class Blog
	def initialize(name)
		@post_array = []
		@blog_name = name
		@total_pages = 0
	end
	def add_post(title, year, month, day, text,sponsored=false)
		@post_array.push(Post.new(title, Date.new(year,month,day), text, sponsored))
		#@post_array.sort! { |a,b| b.date <=> a.date }
	end
	def show
		@post_array		
	end
	def show_latest_posts
		@latest_posts = @post_array.sort { |a,b| b.date <=> a.date }
	end

end
