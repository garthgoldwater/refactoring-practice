require "./hand"
class Deck
  def initialize
    @cards = populate_deck
    @cards.shuffle!
  end

  def deal_hand
    dealt_cards = []
    5.times { dealt_cards << @cards.pop }
    Hand.new(dealt_cards)
  end

  private

  def populate_deck
    cards = []
    2.upto(14) do |value|
      1.upto(4) do |suit|
        cards << Card.new(value, suit)
      end
    end
    cards
  end

end
