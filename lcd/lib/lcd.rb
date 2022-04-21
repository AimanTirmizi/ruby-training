# frozen_string_literal: true

class LCD
  attr_reader :digits

  def initialize(digit)
    @digits = digit
  end

  def render
    case digits
    when 8
      horizontalState + verticalState + verticalState
    when 0
      verticalDigitState
    when 6
      horizontalState + renderPipes + renderUnderscore + renderSpace + renderNewLine + verticalState
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

  def verticalDigitState
    if digits == 0
      horizontalState + renderPipes + renderSpace + renderPipes + renderNewLine + verticalState
    end
  end
end

