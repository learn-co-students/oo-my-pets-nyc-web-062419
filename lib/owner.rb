class Owner

  @@all = []

  def self.all
    @@all
  end

  def self.count

    self.all.length

  end

  def self.reset_all

    @@all = []

  end


  attr_reader :species, :name

  def initialize(name)

    @name = name
    @species = "human"

    Owner.all << self

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

    cat = Cat.new(name, self)
    self.cats << cat

  end

  def buy_dog(name)

    dog = Dog.new(name, self)
    self.dogs << dog

  end

  def walk_dogs

    self.dogs.each do |dog|
      dog.mood = "happy"
    end

  end

  def feed_cats

    self.cats.each do |cat|
      cat.mood = "happy"
    end

  end

  def sell_pets

    (self.cats + self.dogs).each do |animal|
      animal.mood = "nervous"
      animal.owner = nil
    end

  end

  def list_pets

    "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."

  end
  
  



end