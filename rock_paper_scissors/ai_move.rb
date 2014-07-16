class AiMove
  MOVES_THAT_WILL_BEAT = {
    "s" => "r",
    "p" => "s",
    "r" => "p"
  }

  MOVES_THAT_WILL_LOSE_TO = MOVES_THAT_WILL_BEAT.invert

  attr_accessor :player_move, :strategy

  def initialize(player_move, strategy)
    @player_move = player_move
    @strategy = strategy
  end

  def move
    case strategy
    when :cheater
      cheat
    when :loser
      lose
    else
      generate_random
    end
  end

  private

  def cheat
    MOVES_THAT_WILL_BEAT[player_move]
  end

  def lose
    MOVES_THAT_WILL_LOSE_TO[player_move]
  end

  def generate_random
    Round::LEGAL_MOVES.sample
  end
end
