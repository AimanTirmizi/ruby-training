# frozen_string_literal: true

class Dice
  attr_reader :values

  def roll(value = 1)
    @values = value.times {rand(1..6)}
  end
end
