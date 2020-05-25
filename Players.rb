class Players 
  attr_accessor :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def reduce_lives
    @lives -= 1
  end

end