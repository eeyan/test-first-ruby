class Temperature
  attr_accessor :f, :c

  def initialize (options = {})
    @options = options

=begin
    @options = {
      f: nil,
      c: nil,
    }.merge(options || {})

  #  @degrees_f = options[:f]
  #  @degrees_c = options[:c]
=end
  end

  def self.from_celsius(cel)
    new(:c => cel)
  end

  def self.from_fahrenheit(fah)
    new(:f => fah)
  end

  def in_celsius
    if @options.has_key?(:c)
      @options[:c]
    else
    #  f(@options[:f] - 32) * 5.0 / 9.0
    fah = @options[:f]
    self.ftoc(fah)
    end
=begin
    if @degrees_c
      @degrees_c
    else
      (@degrees_f - 32) * 5.0 / 9.0
    end
=end
  end

  def in_fahrenheit
    if @options.has_key?(:f)
      @options[:f]
    else
    # @options[:c] * 9.0 / 5.0 + 32
      cel = @options[:c]
      self.ctof(cel)
    end
=begin
    if @degrees_f
      @degrees_f
    else
      @degrees_c * 9.0 / 5.0 + 32
    end
=end
  end

  def ftoc(i)
    (i - 32) * 5.0 / 9.0
  end

  def ctof(i)
    i * 9.0 / 5.0 + 32
  end
end

class Celsius < Temperature

  def initialize(i, options = {})
    @options = options
    @options[:c] = i
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end

end

class Fahrenheit < Temperature

  def initialize(i, options = {})
    @options = options
    @options[:f] = i
  end

  def in_fahrenheit
    super
  end

  def in_celsius
    super
  end

end
