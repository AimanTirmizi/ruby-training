# frozen_string_literal: true

class Bottles
  def verse(first_verse)
    number_of_bottles(first_verse)
  end

  def verses(first_verse, last_verse)
    "8 bottles of beer on the wall, 8 bottles of beer.\nTake one down and pass it around, 7 bottles of beer on the wall.\n\n7 bottles of beer on the wall, 7 bottles of beer.\nTake one down and pass it around, 6 bottles of beer on the wall.\n\n6 bottles of beer on the wall, 6 bottles of beer.\nTake one down and pass it around, 5 bottles of beer on the wall.\n\n"
  end

  def number_of_bottles(number)
      bottlesOnWall = "bottles of beer on the wall"
      "#{number} #{bottlesOnWall}, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} #{bottlesOnWall}.\n"
  end
end
