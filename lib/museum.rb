require './lib/patron'

class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
    @recommended = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end


  def recommend_exhibits(patron)
    @exhibits = patron.interests 
  end

end
