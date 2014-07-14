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

  attr_reader :suit
  attr_reader :value

  def to_s
  "#{value_string} #{suit}"
  end

  private

  def value_string
    if value < 10
      value.to_s
    else
      face_value
    end
  end

  def face_value
    if NAMED_RANKS.key?(value)
      NAMED_RANKS[value]
    else
      value
    end
  end
end
