class Dog
  
	attr_accessor :mood, :owner
	attr_reader :name

	@@all = []

	def initialize(name, owner)
		@name = name
		@mood = "nervous"
		@owner = owner
		Dog.all << self
	end

	def self.all 
		@@all 
	end

end