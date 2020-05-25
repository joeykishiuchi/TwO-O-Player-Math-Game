require "./Turns"
require "./Players"

class Math_Game 

  attr_accessor :current_player

  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
    @current_player = @player1
  end 

  def run 
    puts "Welcome to the TwO-O-Player Math Game!"
    while (@player1.lives > 0 && @player2.lives > 0) do 
      # Intstantiate a new turn pbject
      turn = Turns.new(self.current_player)
      turn.run
      puts self.get_current_scores
      self.switch_player
    end
    self.end_game
  end

  def get_current_scores
     # Display current scores for each player
    "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def switch_player 
    # Rotate to other player
    if self.current_player.name == @player1.name
      self.current_player = @player2
    else 
      self.current_player = @player1
    end
  end

  def end_game 
    # Display outcome when a player has won
    if self.current_player.name == @player2.name 
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3!"
    else 
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3!"
    end
    puts "------ Game Over ------"
    puts "Good Bye!"
  end

end