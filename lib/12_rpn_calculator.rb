class RPNCalculator

  attr_accessor :calc

  def initialize
    @calc = []
  end

  def push(num)
    calc << num
  end

  def fail
    raise "calculator is empty"
  end

  def value
    calc[-1]
  end

  def plus
    if calc.length < 2
      self.fail
    else
      calc << calc.pop + calc.pop
    end
  end

  def minus
    if calc.length < 2
      self.fail
    else
      # math terms for original number, minuend, and the number being taken away from it, subtrahend
      subtrahend = @calc.pop
      minuend = @calc.pop
      @calc << minuend - subtrahend
    end
  end

  def divide
    if calc.length < 2
      self.fail
    else
      # naming & popping off the divisor, dividend and turning them into floats. floats only necessary for division
      divisor = calc.pop.to_f
      dividend = calc.pop.to_f
      calc << dividend / divisor
    end
  end

  def times
    if calc.length < 2
      self.fail
    else
      calc << calc.pop * calc.pop
    end
  end

  def tokens(str)
    tokenized = str.split
    tokenized.map! do |a|
      if a.to_i.to_s == a
        a.to_i
      else
        a.to_sym
      end
    end
  end

  def evaluate(str)
    tokens(str).each do |i|
      if i.class == Fixnum
        self.push i
      elsif i == :+
        self.plus
      elsif i == :-
        self.minus
      elsif i == :*
        self.times
      elsif i == :/
        self.divide
      end
    end
    self.value
  end

end
