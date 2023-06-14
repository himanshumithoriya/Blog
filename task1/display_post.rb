require_relative 'helper_classes'
require_relative 'create_blog.rb'
require_relative 'write_post'
class DisplayPost
  def initialize(current_log,posts)
    @current_log=current_log
    @posts=posts
  end
  def display_posts
    if @posts.empty?
      puts "First, You have to add some posts "
      return
    end
    
    puts "Latest post :"
    
    @posts.each do |p|
      puts "Title : #{p.title}, Content : #{p.content}, author : #{p.author}, date : #{p.date}"
    end
  end
end
