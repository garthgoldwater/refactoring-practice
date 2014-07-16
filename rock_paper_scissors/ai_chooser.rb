require "./ai"

class AiChooser
  LEGAL_INPUT = %w(c l r)

  def initialize
    @player_input = ""
  end

  def choose
    display_prompt_for_ai_type
    get_ai_type_from_player
    parse_player_input
  end

  private

  AI_ABBREVIATIONS = {
    "c" => :cheater,
    "l" => :loser,
    "r" => :random
  }

  attr_accessor :player_input

  def display_prompt_for_ai_type
    puts "Choose an ai"
    puts "Enter c for cheater, l for loser, or r for random ai"
  end

  def get_ai_type_from_player
    get_valid_input_from_player
  end

  def get_valid_input_from_player
    while !LEGAL_INPUT.include?(player_input)
      print "Your choice: "
      self.player_input = gets.chomp.downcase
    end
  end

  def parse_player_input
    AI_ABBREVIATIONS[player_input]
  end
end
