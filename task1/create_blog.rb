require_relative 'helper_classes'

class CreateBlog
  def initialize(current_log,blogs)
    @blogs=blogs
    @current_log=current_log
  end  

  def create_blog
    puts "Enter name of blog"
    name=gets.chomp
    blog=Blog.new(name,@current_log)
    @blogs << blog
    puts "Blog Created Successfully"

    puts "Available blogs"
    @blogs.each_with_index {|b,ind| puts "Blog #{ind + 1} Name: #{b.name}"}
  end
end