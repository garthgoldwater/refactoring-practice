require "./game_loop"
require "./ai_chooser"

class RockPaperScissors
  def play
    ai = Ai.new
    display_welcome
    GameLoop.new(ai).run
  end

  def display_welcome
    puts "Rock paper scissors"
    puts "Enter r, p, or s to play."
    puts "Enter q to quit"
  end
end

rock_paper_scissors = RockPaperScissors.new
rock_paper_scissors.play
