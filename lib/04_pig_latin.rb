# translate a string to pig latin
def translate(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  str.gsub(/[\w']+/) do |word|
    if vowels.include? word[0]
      word << 'ay'
    elsif word[0] == 'q'
      word << 'quay'
      word = word[2..-1]
    elsif word[0] == 'Q'
      word << 'quay'
      word = word[2..-1]
      word = word.capitalize
    elsif word[0] =~ /[A-Z]/
      word.gsub!('qu', '**') #replaces qu with ** to ignore qu temporarily
      # grabs the first consonant or group of consonants before the first vowel
      first_phoneme = word.split(/[aeiou]/)[0]
      word << first_phoneme + 'ay'
      word.gsub!('**', 'qu')
      starting_index = first_phoneme.length
      word = word[starting_index..-1]
      word = word.downcase.capitalize
    else
      word.gsub!('qu', '**') #replaces qu with ** to ignore qu temporarily
      # grabs the first consonant or group of consonants before the first vowel
      first_phoneme = word.split(/[aeiou]/)[0]
      word << first_phoneme + 'ay'
      word.gsub!('**', 'qu')
      starting_index = first_phoneme.length
      word = word[starting_index..-1]
    end
  end
end

#I'm sure there has to be a better / more efficient way to set this up, but for now this made the most sense.
# There has to be a simpler way to do such similar things than totally seperate statements, but I think I'll have to learn more about regex's (and probably other topics) before then.
