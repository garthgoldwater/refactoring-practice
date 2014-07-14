require "./hand"

class Deck
  VALUES = (2..14).to_a
  SUITS = %w(H D S C)
  CARDS_PER_HAND = 5

  def initialize
    @cards = populate_deck
    @cards.shuffle!
  end

  def deal_hand
    Hand.new(@cards.shift(CARDS_PER_HAND))
  end

  private

  def populate_deck
    VALUES.flat_map do |value|
      SUITS.map do |suit|
        Card.new(value, suit)
      end
    end
  end
end
