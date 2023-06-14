require_relative 'helper_classes'
require_relative 'create_blog.rb'
class WritePost
  def initialize(blogs,posts,current_log)
    @blogs=blogs
    @posts=posts
    @current_log=current_log
  end
  def write_post
    if @blogs.empty?
      puts "Firstly create a blog"
      return
    end

    puts "Available blogs"
    @blogs.each_with_index {|b,ind| puts "Blog #{ind + 1} and #{b.name}"}

    puts "Create a post"
    puts "Enter the blog number to write a post"
    blog_no = gets.chomp.to_i

    if blog_no <=0 || blog_no > @blogs.length
      puts "Invalid blog number"
      return
    end

    blog = @blogs[blog_no-1]
    puts "Enter the title of the post "
    title = gets.chomp
    puts "Enter content of the post"
    content = gets.chomp
    if title =~ (/[a-z,A-Z,0-9]{2,25}/) && content =~ (/[a-z,A-Z,0-9]{2,50}/)
      post = Post.new(title,content,@current_log)
      @posts << post
      puts "Post published successfully!!!"
    else
      puts "Please enter valid details"
    end 
  end
end