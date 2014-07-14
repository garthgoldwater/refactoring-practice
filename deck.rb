require "./hand"
class Deck
  VALUE_LIST = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
  SUIT_LIST = ["H", "D", "S", "C"]
  CARDS_PER_HAND = 5

  def initialize
    @cards = populate_deck
    @cards.shuffle!
  end

  def deal_hand
    dealt_cards = []
    CARDS_PER_HAND.times { dealt_cards << @cards.pop }
    Hand.new(dealt_cards)
  end

  private

  def populate_deck
    cards = []
    VALUE_LIST.each do |value|
      SUIT_LIST.each do |suit|
        cards << Card.new(value, suit)
      end
    end
    cards
  end

end
