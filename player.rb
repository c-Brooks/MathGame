module MathGame
  class Player
    attr_accessor :lives, :id

    def initialize(id)
      @id = id
      @lives = 3
    end

    def alive?
      lives > 0
    end
  end
end
