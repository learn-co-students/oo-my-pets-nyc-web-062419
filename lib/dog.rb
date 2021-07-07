class Dog
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []

  def initialize(name, owner = nil)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all.push(self)
  end

  def self.all
    @@all
  end
end