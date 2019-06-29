class Dog
  # code goes here
  attr_accessor :mood, :owner
  attr_writer
  attr_reader :name
  @@all = []

    def initialize(name, mood)
      @name = name
      @mood = "nervous"
      Dog.all << self
    end

    def self.all
      @@all
    end
end