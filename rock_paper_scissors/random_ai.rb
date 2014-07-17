class RandomAi
  def move(player_move)
    Round::LEGAL_MOVES.sample
  end
end
