class Questions 

  attr_reader :answer, :question

  def initialize
    @num1 = rand(1..100)
    @num2 = rand(1..100)
  end

  def answer 
    @num1 + @num2
  end

  def ask_question
    "What is #{@num1} + #{@num2}?"
  end

end