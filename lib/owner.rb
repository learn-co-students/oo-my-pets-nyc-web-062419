class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
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

  def say_species
    return "I am a #{@species}."
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def cats
    Cat.all.each do |cat_instances|
      cat_instances.owner == self
    end
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def dogs
    Dog.all.each do |dog_instances|
      dog_instances.owner == self
    end
  end

  def walk_dogs
    Dog.all.each do |dog_instances|
      dog_instances.owner == self
      dog_instances.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat_instances|
      cat_instances.owner == self
      cat_instances.mood = "happy"
      end
  end

  # i'm proud of my 14 line method
  def sell_pets
    my_dogs = Dog.all.each do |dog_instances|
      dog_instances.owner == self
      dog_instances.mood = "nervous"
      dog_instances.owner = nil
    end
    my_cats = Cat.all.each do |cat_instances|
      cat_instances.owner == self
      cat_instances.mood = "nervous"
      cat_instances.owner = nil
      end
      my_cats.clear
      my_dogs.clear
  end

  def list_pets
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
    

end