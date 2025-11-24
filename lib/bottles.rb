class Bottles

  def song
    verses(99,0)
  end

  def verses(upper,lower)
    upper.downto(lower).collect {|i| verse(i)}.join("\n")
  end

  def pronoun(n=:FIXME)
    if n == 1
      'it'
    else
      'one'
    end
  end

  def quantity(n)
    if n == 0
      "no more"
    else
      n
    end
  end

  def verse(n)
    case n
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    else
      "#{n} #{recipient(n)} of beer on the wall, " +
      "#{n} #{recipient(n)} of beer.\n" +
      "Take #{pronoun(n)} down and pass it around, " +
      "#{quantity(n-1)} #{recipient(n-1)} of beer on the wall.\n"
    end
  end

  def recipient(n)
    if n == 1
      "bottle"
    else
      "bottles"
    end
  end
  
end
