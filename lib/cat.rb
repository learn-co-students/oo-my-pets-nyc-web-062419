class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_writer
  attr_reader :name
  @@all = []

    def initialize(name, mood) 
      @name = name
      @mood = "nervous"
      Cat.all << self
    end 

    def self.all
      @@all
    end
    
    # def owner
    #   Owner.all.select do |owner_instance|
    #     owner_instance.cats
    #   end
    # end
end