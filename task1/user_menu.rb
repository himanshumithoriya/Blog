require_relative 'helper_classes'
require_relative 'login'
class UserMenu 
  def initialize(current_log)
    @blogs = []
    @posts = []
    @followers = []
    @comments = []
    @current_log = current_log
  end
  def user_menu
    # @current_log = Login.new(@users)
    loop do
      menu
      choice=gets.chomp.to_i
      
      case choice
        when 1
          CreateBlog.new(@current_log,@blogs).create_blog
        when 2
          WritePost.new(@blogs,@posts,@current_log).write_post
        when 3
          DisplayPost.new(@current_log,@posts).display_posts
        when 4
          SearchPost.new(@current_log,@posts).search_posts
        when 5
          CommentOnPost.new(@current_log,@posts,@comments).comment_on_post
        when 6
          FollowBlog.new(@current_log,@blogs,@followers).follow_blog
        when 7
          DisplayDashboard.new(@current_log,@posts,@comments,@followers).display_dashboard
        when 8
          Export.new(@posts).post_csv 
        when 9
          LogOut.new(@current_log).log_out
          puts "Exiting..."
          break
        else
          puts "Invalid Choice!! Please try again !!!"
      end
      puts "\n\n"
    end   
  end

  def menu
    puts "1. Create a Blog"
    puts "2. Write a post"
    puts "3. Display Posts"
    puts "4. Search Post"
    puts "5. Comment on a Post"
    puts "6. Follow a Blog"
    puts "7. My Dashboard"
    puts "8. Export to CSV"
    puts "9. Log Out"
    puts "Enter your choice"
  end
end
