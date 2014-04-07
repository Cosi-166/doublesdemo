require 'minitest/autorun'
require 'pry'

class Order
	def initialize
		@items = []
	end

	def add_item(item)
		@items << item
	end

	def gross_total
		@items.reduce(0) { |memo, obj| memo + (obj.price) }
	end

	def net_total
		gross_total * 1.05
	end
end

describe Order do
	before do
		@order = Order.new
		@item_info_list = [ [ "Shoes", 12.00], ["Socks", 6.00]]
		@item_info_list.each do
			|item_info|
			item = MiniTest::Mock.new
			item.expect(:description, item_info[0])
			item.expect(:price, item_info[1])
			@order.add_item(item)
		end
	end

	it "can accumulate items" do
		@order.gross_total.must_equal 18.00
	end
end