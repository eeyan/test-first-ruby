class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(i)
    result = ''
    if i > 9
      result = i.to_s
    elsif i == 0
      result = '00'
    else
      result = '0' + i.to_s
    end
    return result
  end

  def time_string
    hours = @seconds / 3600
    h_string = padded(hours)
    minutes = (@seconds % 3600) / 60
    m_string = padded(minutes)
    seconds = (@seconds % 3600) % 60
    s_string = padded(seconds)
    return h_string + ':' + m_string + ':' + s_string
  end
end
