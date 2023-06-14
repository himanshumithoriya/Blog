
class User
  attr_accessor :username, :password
  def initialize(username,password)
    @username=username
    @password=password
  end
end

class Blog
  attr_accessor :name, :current_user
  def initialize(name,current_user)
    @name=name
    @current_user=current_user
  end
end

class Post
  attr_accessor :title, :content, :author, :date
  def initialize(title,content,author)
    @title=title
    @content=content
    @author=author
    @date = Time.now.strftime('%y-%m-%d')
  end
end

class Follower
  attr_accessor :a, :b
  def initialize(a,b)
    @a=a
    @b=b
  end
end


class Comment
  attr_accessor :a1, :b1
  def initialize(a1,b1)
    @a1=a1
    @b1=b1
  end
end

