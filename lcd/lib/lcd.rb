# frozen_string_literal: true

class LCD
  attr_reader :digits

  def initialize(digit)
    @digits = digit
  end

  def render
    # " _ \n|_|\n|_|\n" = 8
  end

end
