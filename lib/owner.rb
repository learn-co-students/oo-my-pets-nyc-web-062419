require 'pry'


class Owner
  # code goes here
  attr_accessor :cats, :dogs
  attr_writer
  attr_reader :name, :species, :mood
  @@all = []

    def initialize(name)
      @species = "human"
      @name = name
      @cats = []
      @dogs = []  
      # binding.pry
      @@all << self
    end

    def say_species
      "I am a #{self.species}."
    end

    def buy_cat(name)
      cat = Cat.new(name, mood)
        @cats << cat
    end

    def buy_dog(name)
      dog = Dog.new(name, mood)
        @dogs << dog
    end

    def walk_dogs
      Dog.all.select do |dog_instance|
        dog_instance.mood = "happy"
      end
    end

    def feed_cats
      Cat.all.select do |cat_instance|
        cat_instance.mood = "happy"
      end
    end

    def sell_pets
      @dogs = [] || @cats = []
      Dog.all.select do |dog_instance|
        dog_instance.mood = "nervous"
      end
      Cat.all.select do |cat_instance|
        cat_instance.mood = "nervous"
      end
    end

    def list_pets
      "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
    end

    def self.all
      @@all
    end

    def self.count
      Owner.all.count
    end

    def self.reset_all
      @@all = []
    end

end 