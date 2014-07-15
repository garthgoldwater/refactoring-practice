require "./round"
class GameLoop
  PROMPT = "Your move: "
  LEGAL_INPUT = %w(r p s q)
  QUIT_COMMAND = "q"

  attr_accessor :player_input

  def run
    loop do
      prompt_player
      if player_input == QUIT_COMMAND
        break
      end
      play_round
    end
  end

  private

  def play_round
    round = Round.new(player_input)
    round.play
    self.player_input = ""
  end

  def prompt_player
    while !LEGAL_INPUT.include?(player_input)
      print PROMPT
      self.player_input = gets.chomp.downcase
    end
  end
end
