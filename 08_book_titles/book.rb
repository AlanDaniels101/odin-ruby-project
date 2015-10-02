class Book
  attr_accessor :title

  def initialize()
  end

  def title=(title)
    @title = titleize(title)
  end

  def titleize(phrase)
  titleized = ''
  little_words = ["and","over","the","in","of","a","an"]

  phrase.split(' ').each do |word|
    if (little_words.include? word)
      titleized += ' ' + word
    else
      titleized += ' ' + word.capitalize
    end
  end
  # Titleized is just the space
  if titleized.size == 1
    return titleized
  end
  titleized = titleized[1..-1]
  # Titleized is one letter
  if titleized.size == 1
    return titleized[0].capitalize
  end
  return titleized = titleized[0].capitalize + titleized[1..-1]
end
end