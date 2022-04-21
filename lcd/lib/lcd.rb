# frozen_string_literal: true

class LCD
  attr_reader :digits

  def initialize(digit)
    @digits = digit
  end

  def render
    # " _ \n|_|\n|_|\n" = 8
    case digits
    when 8
      horizontalState + verticalState + verticalState
    end
  end

  def renderSpace
    " "
  end

  def renderUnderscore
    "_"
  end

  def renderNewLine
    "\n"
  end

  def renderPipes
    "|"
  end

  def horizontalState
    renderSpace + renderUnderscore + renderSpace + renderNewLine
  end

  def verticalState
    renderPipes + renderUnderscore + renderPipes + renderNewLine
  end

end
