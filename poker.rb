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
    hands = []
    hands = @number_of_players.times.map(@deck.deal_hand)
    hands
  end

  def display_hands
    @hands.each_with_index do |hand, index|
      puts "Player #{index + 1}:"
      puts hand
      puts
    end
  end
end

poker = Poker.new(4)
poker.play
