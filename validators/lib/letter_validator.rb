# frozen_string_literal: true

class LetterValidator
  def validate(letter)
    raise InvalidLetterError if letter.length > 1
  end

  def validate_type(letter)
    return [:vowel] if letter.match(/[aeiou]/)
    [:consonant]
  end

  def validate_half(letter)
    return [:first_half] if letter.match(/[a-m]/)
    [:second_half]
  end

  def validate_usage(letter)
    return [:common_letter] if letter.match(/[etaio]/)
  end
end

# Do not edit this code!
class InvalidLetterError < ArgumentError; end
