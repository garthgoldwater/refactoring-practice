class Ai
  MOVES_THAT_WILL_BEAT = {
    "s" => "r",
    "p" => "s",
    "r" => "p"
  }

  MOVES_THAT_WILL_LOSE_TO = {
    "r" => "s",
    "p" => "r",
    "s" => "p"
  }

  attr_accessor :player_move, :strategy

  def initialize
    @strategy = AiChooser.new.choose
  end


  def generate_move(player_move)
    self.player_move = player_move
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
