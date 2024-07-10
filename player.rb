class Player
	attr_reader :name, :score

	def initialize(name, score)
		@name = name
		@score = score
	end
	
	def get_name()
		return @name
	end
	def set_score(score)
		@score += score
	end
	
	def reset_score()
		@score = 0
	end
	
	def get_score()
		return @score
	end
end
