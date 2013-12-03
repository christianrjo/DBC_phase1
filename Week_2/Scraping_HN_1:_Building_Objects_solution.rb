require 'nokogiri'
# require 'rubygems'
require 'open-uri'



# def extract_usernames(doc)
#   doc.search('.comhead > a:first-child').map do |element|
#     element.inner_text
#   end
# end

class Post
  attr_reader :title, :url, :points, :item_id, :link
  attr_accessor :comments 

  def initialize(args = {})
    @link = args[:link]
    @title = args[:title]
    @url = args[:url]
    @points = args[:points]
    @item_id = args[:item_id]
    @comments = []
  end

  def add_comment(any_comment)
    @comments << any_comment
  end

end

class Comment
  attr_reader :username, :date

  def initialize(args = {})
    @username = args[:username]
    @comment = args[:comment]
    @date = Time.new
  end    
end

class CommentParser

  def initialize(file)
    @doc = Nokogiri::HTML(File.open(file))
    @comment_args = {}
    @post_args = {}
  end

  def parse
    #this will contain method calls that does all the work in parsing a file
    #and creating a comment
    set_post_id
    post = Post.new(@post_args)
    number_of_comments.times do |i|
      assign_comment_args(i)
      post.comments << Comment.new(@comment_args)
    end
    post
  end

  def assign_comment_args(index)
    set_comment_username(index)
    set_comment_text(index)
  end

  def number_of_comments
    @doc.search('.comhead > a:first-child').map { |span| span.inner_text  }.size
  end

  def set_comment_username(index)
    @comment_args[:username] = @doc.search('.comhead > a:first-child').map { |span| span.inner_text  }[index]
  end

   def set_post_id
    html_id = @doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }.join(' ')
    @post_args[:item_id] = html_id.scan(/\d+/).first
   end

  def set_comment_text(index)
    @comment_args[:comment] = @doc.search('.comment > font:first-child').map { |comment| comment.inner_text }[index]
  end
end

p CommentParser.new('post.html').parse




# Create a post
# Create a comments  <---- this is done for 18 comments
# and push comments into post.comments
