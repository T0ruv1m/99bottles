class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.for(number)
    return number if number.kind_of?(BottleNumber)

    case number
    when 0
      BottleNumber0
    when 1
      BottleNumber1
    when 6
      BottleNumber6
    else
      BottleNumber
    end.new(number)
  end

  def to_s
    "#{quantity} #{recipient}"
  end

  def pronoun
    'one'
  end

  def quantity
    number.to_s
  end

  def recipient
    'bottles'
  end

  def action
    "Take #{pronoun} down and pass it around, "
  end

  def successor
    BottleNumber.for(number - 1)
  end
end

class BottleNumber0 < BottleNumber

  def quantity
    'no more'
  end

  def successor
    BottleNumber.for(99)
  end

  def action
    "Go to the store and buy some more, "
  end

end

class BottleNumber1 < BottleNumber

  def pronoun
    'it'
  end

  def recipient
    'bottle'
  end
end

class BottleNumber6 < BottleNumber
  def recipient
    'six-pack'
  end

  def quantity
    '1'
  end
end
