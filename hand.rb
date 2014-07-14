require "./card"

class Hand
  def initialize(cards)
    @cards = cards
  end

  def to_s
    @cards.join("\n")
  end
end
