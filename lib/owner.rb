require "pry"
class Owner
  # code goes here
  @@all = []
  attr_accessor :owner, :cats, :dogs

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
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
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @owner
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each do |dog_obj|
      dog_obj.change_mood
    end
  end

  def feed_cats
    @cats.each do |cat_obj|
      cat_obj.change_mood
    end
  end

  def sell_pets
    cats.each do |cat_obj|
      cat_obj.change_mood
      cat_obj.owner = nil
    end
    dogs.each do |dog_obj|
      dog_obj.change_mood
      dog_obj.owner = nil
    end
  end

  def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end
end