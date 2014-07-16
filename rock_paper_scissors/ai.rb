require "./ai_move"
class Ai

  attr_accessor :strategy

  def initialize(strategy)
    @strategy = strategy 
  end

  def generate_move(player_move)
    AiMove.new(player_move, strategy).move
  end
end
