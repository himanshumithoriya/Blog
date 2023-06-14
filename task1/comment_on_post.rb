require_relative 'helper_classes'
require_relative 'display_post'
require_relative 'write_post'

class CommentOnPost
  def initialize(current_log,posts,comments)
    @current_log=current_log
    @posts=posts
    @comments=comments
  end

  def comment_on_post
    if @posts.empty?
      puts 'No posts available to comment on'
      return
    end

    puts "Available post :"
    
    @posts.each do |p|
      puts "Title : #{p.title}, Content : #{p.content}, author : #{p.author}, date : #{p.date}"
    end
    
    
    puts "Enter title of post to post a comment"
    title = gets.chomp
    count=0

    @posts.each do |p|
      count+=1
      if(p.title==title)
        puts "Enter your comment"
        comment = gets.chomp
        post = @posts[count - 1]  
        comment = Comment.new(@current_log, post.author)
        @comments << comment
        puts 'Comment posted successfully'
      end
    end
  end
end
