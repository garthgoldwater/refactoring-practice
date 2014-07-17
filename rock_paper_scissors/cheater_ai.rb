class CheaterAi
  MOVES_THAT_WILL_BEAT = {
    "s" => "r",
    "p" => "s",
    "r" => "p"
  }

  def move(player_move)
    MOVES_THAT_WILL_BEAT[player_move]
  end
end
