require 'minitest/autorun'
require_relative "./sut1.rb"

class BlogTest < Minitest::Test
  def test_publish_adds_post_to_published_posts
    author = Object.new
    blog = Blog.new(author)
    post = Post.new
    blog.publish!(post)
    assert_includes(blog.published_posts, post)
  end
end
