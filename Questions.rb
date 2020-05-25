class Questions

  attr_accessor :answer

  def initialize 
    @answer
  end

  def generate_question
    first = (rand() * 20).floor + 1
    second = (rand() * 20).floor + 1
    self.answer = first + second
    "What does #{first} plus #{second} equal?"
  end

  def compare_answer(guess)
    self.answer == guess
  end
end 