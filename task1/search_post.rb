require_relative 'helper_classes'
require_relative 'write_post'
class SearchPost
  def initialize(current_log,posts)
    @current_log=current_log
    @posts=posts
  end
  def search_posts
    puts "Enter title of post to be searched :"
    title = gets.chomp
    @posts.each do |p|
      if(title==p.title)
        puts "Title : #{p.title} : Content : #{p.content} : Author : #{p.author} : Date : #{p.date}"
      end
    end
  end    
end
