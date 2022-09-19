# frozen_string_literal: true

class Bottles
  def verse(bottle)
    case bottle
    when 2
      <<~SONG
        #{bottle} bottles of beer on the wall, #{bottle} bottles of beer.
        Take one down and pass it around, #{bottle - 1} bottle of beer on the wall.
      SONG

    when 1
      <<~SONG
        #{bottle} bottle of beer on the wall, #{bottle} bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      SONG

    when 0
      <<~SONG
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      SONG
    else
      <<~SONG
        #{bottle} bottles of beer on the wall, #{bottle} bottles of beer.
        Take one down and pass it around, #{bottle - 1} bottles of beer on the wall.
      SONG
    end
  end

  def verses(start, finish = 0)
    song = ''
    while start >= finish
      song += "#{verse(start)}\n"
      start -= 1
    end
    song.chomp
  end

  def song
    verses(99)
  end
end
