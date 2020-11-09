require "./players"
require "./questions"

player1 = Players.new("Player 1")
player2 = Players.new("Player 2")


# puts player1.name
# puts player2.name
# puts player1.lives
# puts player2.lives

# player1.lives -= 2
# player2.lives -= 1

# puts player1.lives
# puts player2.lives

question = Questions.new
puts question.question
answer = gets.chomp.to_i
if answer == question.answer
  puts "Good Job!"
else 
  puts "Bad Job!"
end