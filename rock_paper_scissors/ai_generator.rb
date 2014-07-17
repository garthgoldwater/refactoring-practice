require "./cheater_ai"
require "./loser_ai"
require "./random_ai"

class AiGenerator
  def generate(strategy)
    case strategy
    when :cheater
      CheaterAi.new
    when :loser
      LoserAi.new
    else
      RandomAi.new
    end
  end
end
