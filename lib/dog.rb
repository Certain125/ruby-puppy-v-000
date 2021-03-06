#Just like how we've built reader methods that expose the value of 
#instance variables, we need to build a method that will expose, 
#or make accessible outside of the class, the value of a class variable.

class Dog
attr_accessor :name

@@all = Array.new

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all.each do |dog|
    puts dog.name
  end
end

def self.clear_all
  @@all.clear
end


end