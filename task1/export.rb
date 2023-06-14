require 'csv'
require_relative 'helper_classes'
class Export
  def initialize(posts)
    @posts=posts
  end
   
  def post_csv
    CSV.open("./store.csv","w+") do |f|
      f << ["Title","Content","Author","Date"]
    @posts.each do |p|
      f << [p.title,p.content,p.author,p.date]
    end
    end
  end
end