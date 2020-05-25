require "./Questions"

class Turns
  def initialize(current_player)
    puts "------ New Turn ------"
    @question = Questions.new
    @current_player = current_player
  end

  def run
    puts "#{@current_player.name}: " + @question.generate_question
    player_input = gets.chomp
    if @question.compare_answer(player_input.to_i)
      puts "That is correct!"
    else 
      puts "Sorry, that is incorrect!"
      @current_player.reduce_lives
    end
  end
end