# frozen_string_literal: true

class LCD
  attr_reader :digits

  def initialize(digit)
    @digits = digit
  end

  def render
    render_lcd(digits).join
  end

  def space
    " "
  end

  def underscore
    "_"
  end

  def newline
    "\n"
  end

  def pipe
    "|"
  end

  def render_lcd(items)
    # convert string or numbers into array & iterate through it
    array = []
    if items.is_a?(Integer)
      items.digits.reverse.each { |lcd|
        array << matrixDisplay[lcd]
      }
      array
    end
  end

  def matrixDisplay
    {
      0 => [space, underscore, space, newline, pipe, space, pipe, newline, pipe, underscore, pipe, newline],
      1 => [newline, space, space, pipe, newline, space, space, pipe, newline],
      2 => [space, underscore, newline, space, underscore, pipe, newline, pipe, underscore],
      3 => [underscore, space, newline, underscore, pipe, newline, underscore, pipe, newline],
      4 => [pipe, underscore, pipe, newline, space, space, pipe, newline],
      5 => [space, underscore, space, newline, pipe, underscore, newline, space, underscore, pipe, newline],
      6 => [space, underscore, space, newline, pipe, underscore, space, newline, pipe, underscore, pipe, newline],
      7 => [space, underscore, space, newline, space, space, pipe, newline, space, space, pipe, newline],
      8 => [space, underscore, space, newline, pipe, underscore, pipe, newline, pipe, underscore, pipe, newline],
      9 => [space, underscore, space, newline, pipe, underscore, pipe, newline, space, underscore, pipe, newline],
      'a' => [space, underscore, space, newline, pipe, underscore, pipe, newline, pipe, space, pipe, newline],
      'b' => [pipe, underscore, space, newline, pipe, underscore, pipe, newline],
      'c' => [space, underscore, space, newline, pipe, space, newline, pipe, underscore, space, newline],
      'd' => [space, underscore, pipe, newline, pipe, underscore, pipe, newline],
      'e' => [space, underscore, space, newline, pipe, underscore, newline, pipe, underscore],
      'f' => [space, underscore, space, newline, pipe, underscore, newline, pipe]
    }
  end
end