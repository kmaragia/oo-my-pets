'require pry'
class Owner
  # code goes here
  @@all = []
  @@count = 0
  @@reset_all = @@all

  attr_reader :species

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@count = @@all.length
  end

  def self.reset_all
    @@reset_all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def name
    @name
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  # _Make a new instance of the appropriate pet, initializing it with that name
  #   and the owner who is purchasing it_.
  def buy_cat(name)
     Cat.new(name,self)
      #eturn Cat.count
    # _Make a new instance of the appropriate pet
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_dog(name)
    Dog.new(name,self)
  end

  def walk_dogs
    Dog.all.each do |dog|
    dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Dog.all.each do |dog|
      dog.mood = "nervous"
    end
    Cat.all.each do |cat|
      cat.mood = "nervous"
    end
    Dog.all.each do |dog|
      if dog.owner == self
         dog.owner = nil
      end
    end
    Cat.all.each do |cat|
      if cat.owner == self
         cat.owner = nil
       end
     end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end
