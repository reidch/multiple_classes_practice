require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bear'
require_relative '../fish'

class TestBear < MiniTest::Test

	def setup()
		@fish = Fish.new("Alan")
		@bear = Bear.new("Baloo")
	end

	def test_bear_has_name()
		assert_equal("Baloo", @bear.name())
	end

	def test_bear_has_many_fish()
		assert_equal(0, @bear.stomach_contents())
	end

	def test_catch_fish()
		@bear.catch_fish(@fish)
		assert_equal(1, @bear.stomach_contents())
	end

	def test_bears_gain_rivers_loss()
		assert_equal(1, @bear.stomach_contents())
		assert_equal(0, @river.fish_stock())
	end
	
end
