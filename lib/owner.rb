require "pry"
class Owner
  # code goes here
  attr_reader :name, :species 
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end 
  
  def say_species
    "I am a #{@species}." 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  def self.reset_all 
    @@all.clear 
  end 
  
  def cats 
    Cat.all.select { |cat| cat.owner == self } 
  end 
  
  def dogs 
    Dog.all.select { |dog| dog.owner == self }
  end 
  
  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end 
  
  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end 
  
  def walk_dogs
    self.dogs.collect do |dog|
      dog.mood = "happy" 
    end 
  end 
  
  def feed_cats 
    self.cats.collect do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def sell_pets 
    self.cats.collect do |cat|
      cat.mood = "nervous"
    end 
    self.dogs.collect do |dog|
      dog.mood = "nervous" 
    end 
  end 
  
end