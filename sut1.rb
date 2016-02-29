class Post
  attr_reader :published

  def publish!
    @published = true
  end
end

class Blog
  attr_reader :published_posts

  def initialize author
    @author = author
    @published_posts = []
  end

  def publish! post
    published_posts << post
    post.publish!
  end

  # More methods
end
