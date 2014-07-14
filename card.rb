class Card
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{value_string}#{@suit}"
  end

  private

  def value_string
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
end
