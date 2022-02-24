# frozen_string_literal: true

class NumberValidator
  def validate(number)
    number % 2 == 0 ? [:even] : [:odd]
    end
end
