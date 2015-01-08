class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add (entry)
    if entry.class == String
      entries[entry] = nil
    else
      entry.each do |word, definition|
        entries[word] = definition
      end
    end
  end

  def keywords
    entries.keys.sort
  end

  def include? word
    entries.include? word
  end

  def find search
    search_results = {}
    entries.each do |word, definition|
      if word.match /.*#{search}.*/
        search_results[word] = definition
      end
    end
    search_results
  end

  def printable
    print_format = entries.sort.map do |key, value|
      "[#{key}] \"#{value}\""
    end
    print_format.join("\n")
  end

end
