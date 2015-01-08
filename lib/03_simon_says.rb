#return a string
def echo(str)
  str
end

#shout a string - print it in all uppercase letters
def shout(str)
  str.upcase
end

#repeat a word / string n times, or default to 2 times if no number given, and put a space between each repitition
def repeat(str, n = 2)
  ((str + ' ') * n).strip
end

# return first n letters of a string or the first letter if no number given
def start_of_word(str, n = 1)
  str[0, n]
end

# return first word of a string
def first_word(str)
  str.split[0]
end

# set string to Title Case and return it
def titleize(str)
  little_words = %w{a an and the for or nor of but over on from by under at yet to too}
  str.split.each_with_index.map{|i, index| little_words.include?(i) && index > 0 ? i : i.capitalize}.join(' ')
end
