class LoserAi
  MOVES_THAT_WILL_LOSE_TO = CheaterAi::MOVES_THAT_WILL_BEAT.invert

  def move(player_move)
    MOVES_THAT_WILL_LOSE_TO[player_move]
  end
end
