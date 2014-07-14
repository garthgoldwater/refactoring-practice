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
    dealt_cards = []
    dealt_cards << @cards.shift(CARDS_PER_HAND)
    Hand.new(dealt_cards)
  end

  private

  def populate_deck
    cards = []
    VALUES.flat_map do |value|
      SUITS.map do |suit|
        Card.new(value, suit)
      end
    end
    cards
  end
end
