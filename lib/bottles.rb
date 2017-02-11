class Bottles
  def song
    verses(99,0)
  end

  def verses(start, ending)
    song_verses = ''
    while start > ending do
      song_verses += verse(start)
      song_verses += "\n"
      start -= 1
    end
    song_verses += verse(start)
    song_verses
  end

  def verse(number)
    <<-VERSE
#{opening(number)}
#{ending(number)}
VERSE
  end

  def ending(number)
    case number
    when 0
      zero_remain_ending
    when 1
      one_remain_ending
    else
      regular_ending(number)
    end
  end

  def old_remail_name(number)
    return 'bottle' if number == 1
    'bottles'
  end

  def new_remain_name(number)
    return 'bottle' if number == 2
    'bottles'
  end

  def regular_ending(number)
    "Take one down and pass it around, #{number - 1} #{new_remain_name(number)} of beer on the wall."
  end

  def one_remain_ending
    "Take it down and pass it around, no more bottles of beer on the wall."
  end

  def zero_remain_ending
    'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end

  def opening(number)
    case number
    when 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      regular_opening(number)
    end
  end

  def regular_opening(number)
    "#{number} #{old_remail_name(number)} of beer on the wall, #{number} #{old_remail_name(number)} of beer."
  end
end
