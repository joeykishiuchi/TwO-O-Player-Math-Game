require "./Questions"

class Turns
  def initialize(current_player)
    puts "------ New Turn ------"
    @question = Questions.new
    @current_player = current_player
  end

  def run
    # Display question to current player
    puts "#{@current_player.name}: " + @question.generate_question
    # Take player input 
    player_input = gets.chomp 
    # Compare player input to the answer for the question
    if @question.compare_answer(player_input.to_i)
      puts "That is correct!"
    else 
      puts "Sorry, that is incorrect!"
      #reduce the current players lives if they answer incorrectly
      @current_player.reduce_lives 
    end
  end
end