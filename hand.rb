require "./card"
class Hand
  def initialize(cards)
    @cards = cards
  end

  def to_s
    display_hand = ""
    @cards.each { |card| display_hand << card.to_s << "\n" }
    display_hand
  end
end
