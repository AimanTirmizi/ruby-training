# frozen_string_literal: true

class Greed
  numbers = Array.new

  def score(numbers = nil)
    if numbers == nil
      raise GreedError
    elsif numbers == []
      0
    elsif numbers.length == 1
      simple_scoring(numbers[0])
    elsif numbers.length == 3
      triple_scoring(numbers[0])
    end
  end

  def simple_scoring(value)
    return 100 if value == 1
    return 50 if value == 5
    return 0 if value == 2 || value == 3 || value == 4 || value == 6
  end

  def triple_scoring(value)
    return 1000 if value == 1
    return value * 100
  end
end

class GreedError < StandardError
end
