

class Cat
  attr_accessor :mood
  attr_reader :name,:owner
  @@cats = []
  def initialize name,owner
    @name = name
    @mood = "nervous"
    @owner = owner
    owner.cats << self
    @@cats << self
  end
  def sell 
    @owner = nil
  end

  def self.all
    @@cats
  end

end


