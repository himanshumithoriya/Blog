require_relative 'helper_classes'
require 'io/console'
class Registered
  def initialize(users)
    @users=users
  end
  def register_account
    count = 0
    puts "Register an account"
    while true
      puts "Enter your username"
      username=gets.chomp
      puts "Enter your password"
      password = IO::console.getpass
      
      s=password.length
      for i in 0...s.to_i
        print "*"
      end
      @users.each do |u|
        if u.username==username
          puts "\nUsername already exists!!!"
          return
        end
      end    
      if username =~ (/\w{3,10}\.\w{3,6}/) && password =~(/\w{3,10}/)
        user=User.new(username,password)
        @users << user
        puts "\nRegistration Successfully"
        return
      elsif count==3
        puts "Please try again letter"
        return
      else
        puts "invalid username or password"
        count+=1
      end
    end   
  end
end