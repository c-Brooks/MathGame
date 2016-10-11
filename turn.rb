def turn(player)

  puts "\nPlayer #{player.id}:"

  q = MathGame::Question.new
  q.ask

  if q.resp_correct?
    handle_correct(player)
  else
    player.lives -= 1
    handle_incorrect(player)
    if !player.alive?
      handle_game_end(player)
    end
  end
end
