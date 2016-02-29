require_relative 'sut2.rb'
require 'minitest/autorun'
require 'pry'

class BlogTest < Minitest::Test
  def test_publish
    post = Post.new
    user = User.new
    blog = Blog.new(user)
    user.stub :author?, true do
      blog.publish!(post)
      assert_includes blog.published_posts, post
    end
  end
end
