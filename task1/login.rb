require_relative 'helper_classes'
require 'io/console'
require_relative 'user_menu.rb'
class Login
  def initialize(users,current_log)
    @users=users
    @current_log = current_log
  end
  def log_in
    if @users.empty?
      puts "First, You need to registered yourself"
    else
      puts "enter your username"
      username=gets.chomp
      
      puts "enter your password"
      password = IO::console.getpass

      s=password.length
      for i in 0...s.to_i
        print "*"
      end
      @users.each do |check|
        found_user = check.username == username && check.password == password
        if found_user
            @current_log = username
            puts "\nLogin successfully !!!"
            UserMenu.new(@current_log).user_menu
        else
            puts "Invalid username or password"
        end
      end
    end        
  end
end
