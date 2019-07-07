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
    Owner.all.count
  end
  
  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def cats
    Cat.all.select do |cat|
     cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end  

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each do |instance|
      instance.mood = "happy"
    end
  end

  def feed_cats
    self.cats.each do |instance|
      instance.mood = 'happy'
    end
  end

  def sell_pets
    all_pets = self.cats + self.dogs
      all_pets.each do |pet|
      sell_pet(pet)
    end
  end

  def sell_pet(pet)
    pet.owner = nil
    pet.mood = "nervous"
  end

  def list_pets
    dogs = self.dogs.count
    cats = self.cats.count
    "I have #{dogs} dog(s), and #{cats} cat(s)."
  end

end