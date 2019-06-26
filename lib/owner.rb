require 'pry'
class Owner
  attr_accessor :cats,:dogs
  attr_reader :name, :species
  @@owners = []
  def initialize name
    @name = name
    @species = "human"
    @@owners << self
    @cats = []
    @dogs = []
  end
  
  def self.all
    @@owners 
  end

  def self.count
    self.all.length
  end
  def self.reset_all
    @@owners.clear
  end
  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name,self)
    
  end
  def buy_dog(name)
    dog = Dog.new(name,self)
    
  end

  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @cats.each {|cat| cat.mood = "happy"}
  end
  def sell_pets
    @cats.each  {|cat| cat.sell ; cat.mood = "nervous"}
    @dogs.each  {|dog| dog.sell ; dog.mood = "nervous"}
  end

  def list_pets
    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end

end