# frozen_string_literal: true

class Greed
  numbers = Array.new

  def score(numbers = nil)
    if numbers == nil
    raise GreedError
    elsif numbers == []
    0
    end
  end
end

class GreedError < StandardError
end
