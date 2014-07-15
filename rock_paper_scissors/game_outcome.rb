class GameOutcome
  SCENARIOS_IN_WHICH_PLAYER_WINS = [
      { player: "r", ai: "s" },
      { player: "s", ai: "p" },
      { player: "p", ai: "r" }
    ]

  def initialize(moves)
    @moves = moves
  end

  attr_reader :moves

  def determine
    if SCENARIOS_IN_WHICH_PLAYER_WINS.include?(moves)
      "player"
    else
      determine_if_tie_or_ai_win
    end
  end

  private

  def determine_if_tie_or_ai_win
    if moves[:player] == moves[:ai]
      "tie"
    else
      "ai"
    end
  end
end
