class Owner
  # code goes here
  attr_reader :name, :species 
  
  def initialize(name)
    @name = name
    @species = "human"
  end 
end