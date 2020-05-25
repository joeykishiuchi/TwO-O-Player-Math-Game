Nouns for Classes

- Questions => generates an addition equation of two random digits between 1 - 20, and stores the answer.
- Players => keeps the score of the number of questions answered as well as their 'lives remaining' 
- Games => controls the game flow. Rotates the players per question and displays a message when the question is answered correctly or incorrectly

Players methods 
  - will instantiate a player
  - will store the players lives
  - can reduce the number of lives

Questions methods 
  - will instantiate a new question every turn
  - will generate a new question
  - will store the answer
  - can compare the answer to a users guess and return true or false

Math_Games 
  - will instantiate a new game and players
  - will control the player rotation
  - will output resonses for Player scores nad outcome of game

Turns 
  - will instantiate a new turn which will take a new question and the current user. 
  - will handle user I/O
  - will output response for a question answered correctly or incorrectly
