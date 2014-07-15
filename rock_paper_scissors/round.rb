require "./game_outcome"

class Round
  LEGAL_MOVES = %w(r p s)

  attr_accessor :ai_move, :player_move, :winner

  def initialize(player_move)
    @player_move = player_move
  end

  def play
    generate_ai_move
    determine_winner
    puts "the winner is #{winner}"
  end

  private

  def generate_ai_move
    @ai_move = LEGAL_MOVES.sample
  end

  def determine_winner
    game_outcome = GameOutcome.new(player: self.player_move, ai: self.ai_move)
    self.winner = game_outcome.determine
  end
end
