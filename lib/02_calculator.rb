# add two numbers
def add(a, b)
  a + b
end

# subtract the second number from the first
def subtract(a, b)
  a - b
end

# sum an array of numbers
def sum(nums)
  sum = 0
  nums.each {|n| sum += n}
  sum
end

# multiply an array of numbers
def multiply(nums)
  nums.inject{|product, n| product *= n}
end

# raise the first number (a) to the power of the second (b)
def power(a, b)
  a ** b
end

# find the factorial of a number (0! = 1, 3! = 6, etc.)
def factorial(n)
  f = 1
  for i in 1..n
    f *= i
  end
  f
end
