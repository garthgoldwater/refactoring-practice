class Card
  def initialize(value, suit)
    @value = value
    @suit = suit_initializer(suit)
  end

  def to_s
    value_str << @suit
  end

  private

  def value_str
    if @value <= 10
      @value.to_s
    else
      face_value
    end
  end

  def face_value
    case @value
    when 11
      "J"
    when 12
      "Q"
    when 13
      "K"
    when 14
      "A"
    end
  end

  def suit_initializer(suit)
    case suit
    when 1
      "H"
    when 2
      "D"
    when 3
      "S"
    when 4
      "C"
    end
  end
end
