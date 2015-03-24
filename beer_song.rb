# Sing a nice drunk song
class BeerSong
  def verse(number)
    v = stock(number).capitalize + wall + ', ' + stock(number) + "of beer.\n"
    v << (number == 0 ? punchline : 'Take ' + take_one(number) + 'down and pass it around, ' + stock(number - 1))
    v << wall + ".\n"
  end

  def verses(end_of, start)
    range = (start..end_of).to_a.reverse
    ''.tap { |verses| range.each { |number| verses << verse(number) + "\n" } }
  end

  def sing
    verses(99, 0)
  end

  def stock(number)
    number == 0 ? stock = 'no more ' : stock = "#{number} "
    number == 1 ? bottle = 'bottle ' : bottle = 'bottles '
    stock + bottle
  end

  def take_one(number)
    number == 1 ? 'it ' : 'one '
  end

  def wall
    'of beer on the wall'
  end

  def punchline
    'Go to the store and buy some more, 99 bottles '
  end
end
