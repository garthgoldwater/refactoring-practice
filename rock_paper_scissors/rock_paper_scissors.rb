require "./game_loop"
require "./ai_chooser"

class RockPaperScissors
  def play
    display_welcome
    GameLoop.new(generate_ai).run
  end

  private

  def display_welcome
    puts "Rock paper scissors"
    puts "Enter r, p, or s to play."
    puts "Enter q to quit"
  end

  def generate_ai
    AiChooser.new.choose
  end
end

rock_paper_scissors = RockPaperScissors.new
rock_paper_scissors.play
