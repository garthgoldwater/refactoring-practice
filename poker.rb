require "./deck"

class Poker
  def initialize(number_of_players)
    @number_of_players = number_of_players
    @deck = Deck.new
    @hands = deal_hands
  end

  def play
    display_hands
  end

  private

  def deal_hands
    @number_of_players.times.map { @deck.deal_hand }
  end

  def display_hands
    puts "Hands ranked highest to lowest"
    @hands.sort!.reverse!
    @hands.each_with_index do |hand, index|
      puts "Player #{index + 1}:"
      puts hand
      puts hand.rank
      puts
    end
  end
end

poker = Poker.new(6)
poker.play
