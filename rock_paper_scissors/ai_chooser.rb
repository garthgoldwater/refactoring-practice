require "./ai_generator"

class AiChooser
  def initialize
    @player_input = ""
  end

  def choose
    display_prompt_for_ai_type
    get_valid_input_from_player
    generate_ai
  end

  private

  AI_STRATEGY_ABBREVIATIONS = {
    "c" => CheaterAi,
    "l" => LoserAi,
    "r" => RandomAi
  }

  attr_accessor :player_input

  def display_prompt_for_ai_type
    puts "Choose an ai"
    puts "Enter c for cheater, l for loser, or r for random ai"
  end

  def get_valid_input_from_player
    while !AI_STRATEGY_ABBREVIATIONS.keys.include?(player_input)
      print "Your choice: "
      self.player_input = gets.chomp.downcase
    end
  end

  def generate_ai
    strategy = AI_STRATEGY_ABBREVIATIONS[player_input]
    strategy.new
  end
end
