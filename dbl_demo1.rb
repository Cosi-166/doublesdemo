require 'minitest/autorun'

class Book
	attr_accessor :title, :description

	def initialize(title, author)
		@description = "Written by #{author.name}"
		@title = title
	end
end

describe Book do
	before do
		@author = MiniTest::Mock.new
		@author.expect(:name, "Tim Hickey")
	end

	it "can build description" do
		@book = Book.new("3D Graphics", @author)
		@book.description.must_equal "Written by Tim Hickey"
		@author.verify
	end
end