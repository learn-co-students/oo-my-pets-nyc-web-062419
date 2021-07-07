class Cat

  @@all = []

  def self.all
    @@all
  end

  def initialize (name, owner)

    @name = name
    @owner = owner
    @mood =  "nervous"

    Cat.all << self

  end

  attr_reader :name
  attr_accessor :mood, :owner






end