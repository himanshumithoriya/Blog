require_relative 'helper_classes'
require_relative 'write_post'
require_relative 'follow_blog'
require_relative 'comment_on_post'
class DisplayDashboard
  def initialize(current_log,posts,comments,followers)
    @current_log=current_log
    @posts=posts
    @comments=comments
    @followers=followers
  end
  def display_dashboard
    post_count=0
    follow_count=0
    comment_count=0

    puts "My Dashboard :-"
    total_post = @posts.each do |post|
      if post.author == @current_log
          post_count += 1
      end
    end

    total_follower = @followers.each do |follow|
      if follow.a == @current_log
          follow_count += 1
      end
    end

    total_comment = @comments.each do |comment|
      if comment.a1 == @current_log
          comment_count += 1
      end
    end
    puts "Total Post : #{post_count}"
    puts "Total followers : #{follow_count}"
    puts "Total comment : #{comment_count}"

  end
end