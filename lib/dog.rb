class Dog
  attr_accessor :mood
  attr_reader :name,:owner
  @@dogs = []
  def initialize name,owner
    @name = name
    @mood = "nervous"
    @owner = owner
    owner.dogs << self
    @@dogs << self
  end

  def sell 
    @owner = nil
  end

  def self.all
    @@dogs 
  end
end
