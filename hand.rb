require "./card"
require "./hand_ranker"

class Hand
  def initialize(cards)
    @cards = cards
    @rank = HandRanker.new(self).rank
  end

  attr_reader :rank, :cards

  def to_s
    @cards.join("\n")
  end

  def <=>(other_hand)
    rank <=> other_hand.rank
  end
end
