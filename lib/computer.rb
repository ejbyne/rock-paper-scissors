class Computer

	attr_reader :name, :pick

	def initialize(name)
		@name = name
	end

	def picks
		choices = [:rock, :paper, :scissors]
		@pick = choices[rand(3)]
	end

end
