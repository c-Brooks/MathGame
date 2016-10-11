
def handle_correct (player)
  puts "Good job, Player #{player.id}! That's correct."
end

def handle_incorrect(player)
  puts "Sorry, Player #{player.id}, that's wrong."
end

def handle_game_end (loser)
  # Find out which player is NOT the loser
  winner = (loser == @p1) ? @p2 : @p1
  puts "Player #{winner.id} wins with a score of #{winner.lives}/3"
  puts "\n--- GAME OVER ---\n"
  exit
end

def print_lives (p1_lives, p2_lives)
  puts "\nLIVES: \nP1: #{p1_lives}/3 VS P2: #{p2_lives}/3"
end

def get_num_input
  gets.chomp.to_i
end
