require "./game_loop"
class RockPaperScissors
  def play
    display_welcome
    GameLoop.new.run
  end

  def display_welcome
    puts "Rock paper scissors"
    puts "Enter r, p, or s to play."
    puts "Enter q to quit"
  end
end

rock_paper_scissors = RockPaperScissors.new
rock_paper_scissors.play
