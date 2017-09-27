class River
	def initialize(name)
		@name = name
		@fish_stock = []
	end

	def name()
		return @name
	end

	def fish_stock()
		return @fish_stock.count()
	end

	def add_fish(fish)
		 @fish_stock << fish
	end

	def remove_fish()
		 @fish_stock.pop()
	end

end
