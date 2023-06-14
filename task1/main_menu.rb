require_relative 'registered'
require_relative 'login'
require_relative 'log_out'
require_relative 'follow_blog'
require_relative 'display_post'
require_relative 'display_dashboard'
require_relative 'create_blog'
require_relative 'comment_on_post'
require_relative 'search_post'
require_relative 'write_post'
require_relative 'export'


class MainMenu 
  def initialize
    @users = []
    @current_log=nil
  end

  def run
    loop do
      blog_menu
      choice=gets.chomp.to_i
       
      case choice
        when 1
          Registered.new(@users).register_account
        when 2
          l = Login.new(@users,@current_log)
          l.log_in
        when 3
          puts "Exiting..."
          return
        else
          puts "Invalid Choice!! Please try again !!!"
      end
      puts "\n\n"
    end
  end  
    
  def blog_menu
    puts "Welcome to MyBlog.com\n"
    puts "1. Register an Account"
    puts "2. Log In"
    puts "3. Exit"
    puts "Enter your choice"
  end
end


m=MainMenu.new
m.run