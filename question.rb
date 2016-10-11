module MathGame
  class Question

  # Generate a random question
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @ans = @num1 + @num2
    end

    def ask
      puts "What does #{@num1} plus #{@num2} equal? \n"
    end

    def resp_correct?
      player_ans = get_num_input
      player_ans == @ans.to_i
    end
  end
end
