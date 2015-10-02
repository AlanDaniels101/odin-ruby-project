def echo(s)
  s
end

def shout(s)
  s.upcase
end

# Default value of times argument is 2
# Returns times copies of s
# E.g. times = 3 --> s s s
def repeat(s, times=2)  
  out = s
  if times == 0
    out = ''
  else
    times -= 1
    times.times do
      out += ' ' + s
    end
  end
  return out
end

def start_of_word(word, last_letter_position)
  x = last_letter_position-1  
  return word[0..x]
end

def first_word(phrase)
  phrase.partition(' ').first
end

def titleize(phrase)
  titleized = ''
  little_words = ["and","over","the"]

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
