require './player'
require './question'
require './player'
require './turn'
require './io'


class Game

  def initialize
    puts "\n # Welcome to Math Game! # \n\n"
    @p1 = MathGame::Player.new(1)
    @p2 = MathGame::Player.new(2)
  end

  def game_loop
    loop do
      puts "\n\n--- NEW TURN ---"
      turn(@p1)
      turn(@p2)
      print_lives(@p1.lives, @p2.lives)
    end
  end
end

# Driver
Game.new.game_loop
