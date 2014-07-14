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

  attr_reader :hand, :rank

  def <=>(other_hand)
      rank <=> other_hand.rank
  end

  private

  def rank_hand
    HAND_RANKS[HandClassifier.new(hand).rank]
  end
end
