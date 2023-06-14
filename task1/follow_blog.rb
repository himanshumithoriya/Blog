require_relative 'helper_classes'
require_relative 'create_blog'
class FollowBlog
  
  def initialize(current_log,blogs,followers)
    @current_log=current_log
    @blogs=blogs
    @followers=followers
  end
  def follow_blog
    if @blogs.empty?
      puts "There is no blog to follow"
    end
    
    puts "Available blogs"
    @blogs.each_with_index {|b,ind| puts "Blog #{ind + 1} and #{b.name}"}


    puts "Enter the blog number to follow"
    blog_no = gets.chomp.to_i

    if blog_no <= 0 || blog_no > @blogs.length  
      puts "Invalid blog number"
      return
    end

    blog = @blogs[blog_no - 1]
    follower = Follower.new(@current_log, blog.current_user)
    @followers << follower

    puts "You are now following the blog '#{blog.name}'"
  end
end