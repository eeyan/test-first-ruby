# degrees F to degrees C
def ftoc(temp)
  (temp - 32) * 5.0 / 9.0
end

# degrees C to degrees F
def ctof(temp)
  (temp * 9.0 / 5.0) + 32
end
