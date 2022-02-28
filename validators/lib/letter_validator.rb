# frozen_string_literal: true

class LetterValidator
  def validate(letter)
    raise InvalidLetterError if letter.length > 1
    letter.match(/[aeiou]/) ? [:vowel] : [:consonant]
    end
end

# Do not edit this code!
class InvalidLetterError < ArgumentError; end
