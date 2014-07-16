require "./game_outcome"

class Round
  LEGAL_MOVES = %w(r p s)

  attr_reader :ai_move, :player_move, :winner

  def initialize(player_move, ai)
    @player_move = player_move
    @ai = ai
  end

  def play
    generate_ai_move
    determine_winner
    display_results
  end

  private

  attr_writer :ai_move, :player_move, :winner
  attr_reader :ai

  def generate_ai_move
    self.ai_move = ai.generate_move(player_move)
  end

  def determine_winner
    game_outcome = GameOutcome.new(player: self.player_move, ai: self.ai_move)
    self.winner = game_outcome.determine
  end

  def display_results
    puts "player's move: #{player_move}"
    puts "ai's move: #{ai_move}"
    puts "the winner is #{winner}"
  end
end
