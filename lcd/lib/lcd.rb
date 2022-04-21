# frozen_string_literal: true

class LCD
  attr_reader :digits

  def initialize(digit)
    @digits = digit
  end

  def render
    # " _ \n|_|\n|_|\n" = 8
  end

  def renderEmptyString
    " "
  end

  def renderDash
    "_"
  end

  def renderNewLine
    "\n"
  end

  def renderVertical
    "|_|"
  end

  def horizontalState
    renderEmptyString + renderDash + renderEmptyString + "\n"
  end

  def verticalState
    renderVertical + renderNewLine + renderVertical + "\n"
  end

end
