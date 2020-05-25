class Players 
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
    @correctly_answered = 0
  end

  def reduce_lives
    @lives -= 1
  end

  def add_correctly_answered 
    @correctly_answered += 1
  end
end