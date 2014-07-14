require "./hand_classifier"
class HandRanker
  HAND_RANKS = {
    :straight_flush => 9,
    :four_of_a_kind => 8,
    :full_house => 7,
    :flush => 6,
    :straight => 5,
    :three_of_a_kind => 4,
    :two_pair => 3,
    :one_pair => 2,
    :high_card => 1
  }

  def initialize(hand)
    @hand = hand
    @rank = rank_hand
  end

  attr_accessor :hand, :rank

  def <=>(other_hand)
    if rank > other_hand.rank || rank < other_hand.rank
      rank <=> other_hand.rank
    else
      # TieBreaker.new(hand, other_hand)
     puts "tiebreaker functionality does not exist yet. All players have been exterminated"
     0
    end
  end

  private

  def rank_hand
    HAND_RANKS[HandClassifier.new(hand).rank]
  end
end
