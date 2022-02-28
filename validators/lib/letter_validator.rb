# frozen_string_literal: true

class LetterValidator
  def validate(letter)
    raise InvalidLetterError if letter.length > 1
    return [:vowel] if letter.match(/[aeiou+]/)
    return [:consonant] if letter.match(/[^aeiou+]/)
    end
  end

# Do not edit this code!
class InvalidLetterError < ArgumentError; end
