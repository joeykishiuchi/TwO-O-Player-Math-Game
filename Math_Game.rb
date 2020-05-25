require "./Turns"
require "./Players"

class Math_Game 

  attr_accessor :current_player

  def initialize
    puts "Welcome to the TwO-O-Player Math Game!"
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
    @current_player = @player1
  end 

  def run 
    while (@player1.lives > 0 && @player2.lives > 0) do 
      turn = Turns.new(self.current_player)
      turn.run
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      if @current_player.name == @player1.name
        @current_player = @player2
      else 
        @current_player = @player1
      end
    end
    if current_player.name == @player2.name 
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3!"
    else 
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3!"
    end
    puts "------ Game Over ------"
    puts "Good Bye!"
  end
end