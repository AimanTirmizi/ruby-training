# frozen_string_literal: true

class Greed
  numbers = Array.new

  def score(numbers = nil)
    if numbers == nil
    raise GreedError
    end
   end
end

class GreedError < StandardError
end
