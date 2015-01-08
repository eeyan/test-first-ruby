class Array

  def sum
    result = 0
    self.each {|a| result += a}
    result
  end

  def square
    self.map {|a| a * a}
  end

  def square!
    self.map! {|a| a * a}
  end

end
