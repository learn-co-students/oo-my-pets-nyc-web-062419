require 'pry'
class Owner
  attr_reader :name, :species
  attr_accessor :mood, :cats, :dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all.push(self)
    @cats = []
    @dogs = []
    
    
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{species}."
  end
  
  def buy_cat(name)
    name = Cat.new(name, self.name)
    self.cats.push(name)
  end

  def buy_dog(name)
    name = Dog.new(name, self)
    self.dogs.push(name)
  end

  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    Dog.all.map {|dog| dog.mood = "nervous" ; dog.owner = nil}
    Cat.all.map {|cat| cat.mood = "nervous" ; cat.owner = nil}
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end