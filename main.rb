require "./Players"
require "./Questions"
require "./Games"

puts "Welcome to the TwO-O-Player Math Game!"

player1 = Players.new("Player1")
player2 = Players.new("Player2")
questions = Questions.new
current_player = player1

while (player1.lives > 0 && player2.lives > 0) do 
  puts "------ New Turn ------"

  puts "#{current_player.name}: " + questions.generate_question
  player_input = gets.chomp
  if questions.compare_answer(player_input.to_i)
    puts "That is correct!"
  else 
    puts "Sorry, that is incorrect!"
    current_player.reduce_lives
  end

  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  
  if current_player.name == player1.name
    current_player = player2
  else 
    current_player = player1
  end
end

if current_player.name == player2.name 
  puts "#{player2.name} wins with a score of #{player2.lives}/3!"
else 
  puts "#{player1.name} wins with a score of #{player1.lives}/3!"
end
puts "------ Game Over ------"
puts "Good Bye!"