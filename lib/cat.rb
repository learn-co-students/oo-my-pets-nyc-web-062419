class Cat
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name,owner)
    @name = name
    @owner = owner
    @@all << self
    @owner.cats << self
    @mood = "nervous"
  end

  def self.all
    @@all
  end

  def change_mood
    if @mood == "nervous"
      @mood = "happy"
    elsif @mood == "happy"
      @mood = "nervous"
    end
  end
end