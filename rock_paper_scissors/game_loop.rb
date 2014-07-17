require "./round"

class GameLoop
  QUIT_COMMAND = "q"
  LEGAL_INPUT = Round::LEGAL_MOVES << QUIT_COMMAND

  attr_reader :player_input

  def initialize(ai)
    @ai = ai
  end

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

  attr_writer :player_input
  attr_reader :ai

  def prompt_player
    self.player_input = ""
    while !LEGAL_INPUT.include?(player_input)
      print "Your move: "
      self.player_input = gets.chomp.downcase
    end
  end

  def play_round
    round = Round.new(player_input, ai)
    round.play
  end
end
