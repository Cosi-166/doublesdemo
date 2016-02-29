class User
  def author?
    # some complicated code
  end
end

class Post
  attr_reader :published

  def publish!
    @published = true
  end
end

class Blog
  attr_reader :published_posts

  def initialize user
    @user = user
    @published_posts = []
  end

  def publish! post
    published_posts << post if @user.author?
  end

  # More methods...
end
