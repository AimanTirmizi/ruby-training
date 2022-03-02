# frozen_string_literal: true

class NumberValidator
  attr_reader :values

  def initialize
    @values = []
  end

  def validate(number)
    raise ArgumentError if number.is_a?(String)
  end

  def validate_type(number)
    return :even if number % 2 == 0
    :odd
  end

  def multiples_of_three(number)
    return :divisible_by_three if number % 3 == 0
  end

  def multiples_of_five(number)
    return :divisible_by_five if number % 5 == 0
  end

  def multiples_of_seven(number)
    return :divisible_by_seven if number % 7 == 0
  end

  def multiples_of_nine(number)
    return :divisible_by_nine if number % 9 == 0
  end

end
