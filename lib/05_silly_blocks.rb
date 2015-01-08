def reverser
  yield.split(' ').map{|a| a.reverse}.join(' ')
end

def adder(n = 1)
  yield + n
end

def repeater(n = 2)
  n.times do
    yield
  end
end
