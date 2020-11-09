require "./questions"
require "./players"

class Game 

  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
    @count = 0
  end

  def new_turn
    @count += 1
    puts "---NEW TURN---"
  end 

  def current_scores
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def play
    while @player1.alive? && @player2.alive?
      new_turn
      question = Questions.new
      puts question.ask_question
      print ">"
      answer = gets.chomp.to_i
      if answer == question.answer
        puts "Good Job!"
        current_scores
      else 
        puts "Bad Job!"
        @player1.lose_life
        @player1.lose_life
        @player1.lose_life
        current_scores
      end
    end 

    if !@player1.alive?
      puts "Game over, player one loses!"
    end
  end 
end