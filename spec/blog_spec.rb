require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"
require "spec_helper"

describe "BlogTest" do 
  describe "shows every post" do
    it "createstwo posts, shows two posts" do
      myBlog = Blog.new("Carter's Blog")
      myBlog.add_post("Steady Rockers hit charts!",2015,1,1,"Reggae band Steady Rockers hits charts with 'Do The Steadie' EP (1-1-2015)",true)
      myBlog.add_post("Madness new album",2014,1,1,"Nutty Boys new album 'Dangermen Sessions' now on shops (1-1-2014)",true)
      array_posts = myBlog.show
      expect(array_posts.count).to eq(2)
    end
   
    it "createstwo posts, sorts two posts" do
      myBlog = Blog.new("Carter's Blog")
      myBlog.add_post("Steady Rockers hit charts!",2015,1,1,"Reggae band Steady Rockers hits charts with 'Do The Steadie' EP (1-1-2015)",true)
      myBlog.add_post("Madness new album",2014,1,1,"Nutty Boys new album 'Dangermen Sessions' now on shops (1-1-2014)",true)
      array_posts = myBlog.show_latest_posts
      expect(array_posts.count).to eq(2)
    end 
  end
end
