def translate(eng)
  pig = ''
  eng.split(' ').each do |word|
    pig += ' ' + pig_latin_ify(word)
  end
  return pig[1..-1]
end

def pig_latin_ify(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  first_vowel_pos = 0
  word.length.times do |i|
    if vowels.include? word[i]
      if word[i] == 'u' and i-1 >= 0 and word[i-1] == 'q'
        first_vowel_pos = i+1
      else  
        first_vowel_pos = i
      end
      break
    end
  end
  if first_vowel_pos != 0
    word = word[first_vowel_pos..-1] + word[0..first_vowel_pos-1]
  end
  word += "ay"
  return word
end