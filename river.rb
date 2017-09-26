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
		 return @fish_stock.count()
	end

	def remove_fish(fish)
		 @fish_stock.delete(fish)
		 return @fish_stock.count()
	end

end
