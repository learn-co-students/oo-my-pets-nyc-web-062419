class Cat
  
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner 
    Cat.all << self
  end

  def self.all
    @@all
  end
  
end