require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'
require_relative '../river'
require_relative '../bear'

class TestFish < MiniTest::Test

def setup()
	@fish = Fish.new("John West")
end

def test_fish_has_name()
	assert_equal("John West", @fish.name())
end

end
