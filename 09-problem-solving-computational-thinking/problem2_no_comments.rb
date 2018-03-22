def vowels
  return ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
end

def is_consonant?(specific_letter)
  vowels.each do |vowel|
    if specific_letter == vowel
      return false
    end
  end
  return true
end

def pig_latin_name(word)
  vowels_list = vowels
  letters = word.split("")
  letters.each do |letter|
    if is_consonant?(letter)
      removed_consonant = letters.shift
      letters = letters + removed_consonant.split
    else
      letters.push("ay")
      return letters.join
    end
  end
end

puts pig_latin_name("Beemo")




