require "./ai"

class AiChooser
  LEGAL_INPUT = %w(c l r)

  def choose
    display_ai_question
    prompt_player
    parse_player_input
  end

  private

  attr_accessor :player_input


  def display_ai_question
    puts "Choose an ai"
    puts "Enter c for cheater, l for loser, or r for random ai"
  end

  def prompt_player
    self.player_input = ""
    while !LEGAL_INPUT.include?(player_input)
      print "Your choice: "
      self.player_input = gets.chomp.downcase
    end
  end

  def parse_player_input
    if player_input == "c"
      :cheater
    elsif player_input == "l"
      :loser
    else
      :random
    end
  end
end
