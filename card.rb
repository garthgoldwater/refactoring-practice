class Card

  NAMED_RANKS = {
    10 => "T",
    11 => "J",
    12 => "Q",
    13 => "K",
    14 => "A"
  }

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  attr_reader :suit, :value

  def to_s
    "#{face_value} #{suit}"
  end

  private


  def face_value
    if NAMED_RANKS.key?(value)
      NAMED_RANKS[value]
    else
      value.to_s
    end
  end
end
