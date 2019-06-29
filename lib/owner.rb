require 'pry'
require_relative './cat.rb'

class Owner
  
	attr_reader :species, :name

	@@all = []

	def initialize(name)
		@name = name
		@species = "human"
		Owner.all << self
	end

	def self.all 
		@@all 
	end

	def self.count
		self.all.length
	end

	def self.reset_all
		self.all.clear
	end

	def say_species
		"I am a #{@species}."
	end

	def cats 
		Cat.all.select do |cat_instance|
			cat_instance.owner == self
		end
	end

	def buy_cat(name)
		Cat.new(name, self)
	end

	def feed_cats
		self.cats.each do |cat|
			cat.mood = "happy"
		end
	end

	def dogs 
		Dog.all.select do |dog_instance|
			dog_instance.owner == self
		end
	end

	def buy_dog(name)
		Dog.new(name, self)
	end

	def walk_dogs
		self.dogs.each do |dog|
			dog.mood = "happy"
		end
	end

	def sell_pets
		all_pets = self.cats + self.dogs

		all_pets.each do |pet|
			sell_pet(pet)
		end
	end

	def sell_pet(pet)
		pet.mood = "nervous"
		pet.owner = nil
	end

	def list_pets
		"I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
	end
			


end

nick = Owner.new("Nick")
casey = Owner.new("Casey")

cat1 = Cat.new("Cat 1", nick)
cat2 = Cat.new("Cat 2", nick)
cat3 = Cat.new("Cat 3", casey)
cat4 = Cat.new("Cat 4", casey)

# binding.pry 
# puts "H"