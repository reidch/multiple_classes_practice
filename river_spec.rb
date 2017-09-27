require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'
require_relative '../bear'

class TestRiver < MiniTest::Test

	def setup()
		@river = River.new("Kavik")
		@fish1 = Fish.new("John West")
		@fish2 = Fish.new("Sally East")
		@fish3 = Fish.new("John North")
		@fish4 = Fish.new("Beth South")
	end

	def test_river_has_name()
		assert_equal("Kavik", @river.name())
	end

	def test_river_has_many_fish()
		assert_equal(0, @river.fish_stock())
	end

	def test_add_fish()
		@river.add_fish(@fish1)
		@river.add_fish(@fish2)
		@river.add_fish(@fish3)
		@river.add_fish(@fish4)
		assert_equal(4, @river.fish_stock())
	end

	def test_remove_fish()
		@river.add_fish(@fish1)
		@river.add_fish(@fish2)
		@river.add_fish(@fish3)
		@river.add_fish(@fish4)
		@river.remove_fish()
		assert_equal(3, @river.fish_stock())
	end

end
