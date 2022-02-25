# frozen_string_literal: true

class NumberValidator
  def validate(number)
    if number.is_a?(String)
      raise ArgumentError
    else
      number % 2 == 0 ? [:even] : [:odd]
    end
  end
end
