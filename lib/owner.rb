require 'pry'

class Owner

  attr_accessor :pet
  attr_reader :name, :species

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def buy_cat(name)
    pet = Cat.new(name, self)
  end

  def buy_dog(name)
    pet = Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.collect {|dog| dog.mood = "happy"} 
  end

  def feed_cats
    self.cats.collect {|cat| cat.mood = "happy"}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def species
    owner = Owner.new(name)
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def sell_pets
    self.cats.collect {|cat| cat.mood = "nervous"}
    self.cats.collect {|cat| cat.owner = nil}
    self.cats.clear
    self.dogs.collect {|dog| dog.mood = "nervous"}
    self.dogs.collect {|dog| dog.owner = nil}
    self.dogs.clear
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end