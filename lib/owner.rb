require "pry"

class Owner
  # code goes here
  attr_reader :name, :species, :cats, :dogs, :pets

  @@owner = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @pets = []
    @@owner << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_cat(kittyName)
    kitty = Cat.new(kittyName, self)
    self.cats << kitty
    self.pets << kitty
  end

  def buy_dog(dogName)
    doggo = Dog.new(dogName, self)
    self.dogs << doggo
    self.pets << doggo
  end

  def sell_pets
    dogs = Dog.all.select do |dog|
      dog.owner == self
    end
    cats = Cat.all.select do |cat|
      cat.owner == self
    end
    pets = dogs + cats

    pets.each do |pet|
      pet.owner = nil
      pet.mood = "nervous"
    end
    @pets = []
    @dogs = []
    @cats = []
  end

  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end

  def walk_dogs
    dogs = Dog.all.select do |dog|
      dog.owner == self
    end
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    cats = Cat.all.select do |cat|
      cat.owner == self
    end
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def self.all
    @@owner
  end

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner = []
  end
end
