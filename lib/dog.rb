class Dog

  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name,owner)
    @name = name
    @mood = "nervous"
    @@all << self
    @owner = owner
  end

  def self.all
    @@all
  end


end
