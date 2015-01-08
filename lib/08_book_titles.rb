class Book
  attr_accessor :title
  def title
    little_words = %w{a an and the for or nor of but over on in from by under at yet to too}
    @title = @title.split.each_with_index.map{|i, index| little_words.include?(i) && index > 0 ? i : i.capitalize}.join(' ')
  end
end
