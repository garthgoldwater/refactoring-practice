require "./game_loop"
class RockPaperScissors
  WELCOME_MESSAGE = "Rock paper scissors. \
                       Enter r, p, or s to play.\
                       Enter q to quit."

  def play
    display_welcome
    GameLoop.new.run
  end

  def display_welcome
    puts WELCOME_MESSAGE
  end
end

rock_paper_scissors = RockPaperScissors.new
rock_paper_scissors.play
