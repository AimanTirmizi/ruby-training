# frozen_string_literal: true

class LCD
  attr_reader :digits

  def initialize(digit)
    @digits = digit
  end

  def render
    case digits
    when 8
      matrixDisplay[8].join
    when 0
      matrixDisplay[0].join
    when 6
      matrixDisplay[6].join
    end
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

  def matrixDisplay
    {
      8 => [" _ ", "\n", "|", "_", "|", "\n", "|", "_", "|", "\n"],
      6 => [" _ ", "\n", "|", "_", " ", "\n", "|", "_", "|", "\n"],
      0 => [" _ ", "\n", "|", " ", "|", "\n", "|", "_", "|", "\n"]
    }
  end
end

