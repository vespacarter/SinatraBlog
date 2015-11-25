require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/blog.rb')
require_relative('lib/post.rb')

myBlog = Blog.new("Carter's Blog")
myBlog.add_post("Steady Rockers hit charts!",2015,1,1,"Reggae band Steady Rockers hits charts with 'Do The Steadie' EP (1-1-2015)",true)
myBlog.add_post("Madness new album",2014,1,1,"Nutty Boys new album 'Dangermen Sessions' now on shops (1-1-2014)",true)
myBlog.add_post("Madrid Ska Band 'Sally Brown' needs bassist",2015,8,10,"Sally Brown looks for experimented bassist (10-8-2015)")
myBlog.add_post("The Aggrolites incoming shows",2014,8,1,"L.A. based band The Aggrolites Madrid gig soon (1-8-2014)")
myBlog.add_post("New Hepcat videoclip",2015,9,20,"Hepcat video 'No Worries' now available at Youtube (20-9-2015)")
myBlog.add_post("Marley's son Damien releases new roots album",2013,12,28,"I don't like roots rock reggae, don't care about this (28-12-2013)")

get '/blog' do 
	@posts = myBlog.show

	erb :show_posts
end

get '/post/:post' do 
	posts = myBlog.show
	post_id = params[:post].to_i
	@post = posts[post_id]
	erb :show_post_details
end

post '/create_task' do
	mytodolist.add_task(Task.new(params[:content]))
	redirect ('/tasks')
end