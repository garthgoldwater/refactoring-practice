class HandClassifier
  def initialize(hand)
    @hand = hand
    @rank = classify
  end

  attr_reader :hand
  attr_accessor :rank

  def classify
    if straight_flush?
      :straight_flush
    elsif four_of_a_kind?
      :four_of_a_kind
    elsif full_house?
      :full_house
    elsif flush?
      :flush
    elsif straight?
      :straight
    elsif three_of_a_kind?
      :three_of_a_kind
    elsif two_pair?
      :two_pair
    elsif one_pair?
      :one_pair
    else
      :high_card
    end
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    find_pairings?(4)
  end

  def full_house?
    grouped_hand = find_matches
    full_house = grouped_hand.length == 2 && grouped_hand.any? do |group|
      group.length == 2
    end
    full_house && grouped_hand.any?{ |group| group.length == 3 }

  end

  def flush?
    hand.cards.map(&:suit).reduce(true, :==) #i apologize for the accidental obscenity of this code
  end

  def straight?
    values = hand.cards.map(&:value)
    values.sort!
    increment = values[0]
    match_tracker = true
    values.each_with_index do |value, index|
      match_tracker = match_tracker && index + increment == value
    end
    match_tracker
  end

  def three_of_a_kind?
    find_pairings?(3)
  end

  def two_pair?
    matches = find_pairings(2)
    matches.length == 2
  end

  def one_pair?
    find_pairings?(2)
  end

  def find_matches
    hand.cards.group_by { |card| card.value }
  end

  def find_pairings?(length)
    !find_matches.select { |number, group| group.length == length }.empty?
  end

  def find_pairings(length)
    find_matches.select { |number, group| group.length == length }
  end
end

