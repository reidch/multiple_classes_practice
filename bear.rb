class Bear
	def initialize(name)
		@name = name
		@stomach_contents = []
	end

	def name()
		return @name
	end

	def stomach_contents()
		return @stomach_contents.count()
	end

	def catch_fish(river)
		fish = river.remove_fish()
		 @stomach_contents << fish
	end

	#
	#
	# def bears_gain_rivers_loss(fish_stock)
	# 	@stomach_contents << fish_stock.remove()
	# end
	#
	# def bears_gain_rivers_loss(fish_stock)
	# 	@stomach_contents << @river.shift()
	# end
end
