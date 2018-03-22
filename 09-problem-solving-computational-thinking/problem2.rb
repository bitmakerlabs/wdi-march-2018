# Problem: Pig Latin
# Pig Latin
 # "apple" => "appleay"
 # "plum" => "umplay"
 # grape => apegray
 # Natalie => atalieNay
 # "squeeze" => "eezesquay"
 # Hasan => asanHay

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

# define a method that accepts a word as an argument
# define pig_latin_name(word)
def pig_latin_name(word)
# and returns a new string (pig latinified)
# need to define vowels (can be an array?)
  vowels_list = vowels
# break word into letters
  letters = word.split("")
# iterate through each letter of the word
# until we hit a vowel
  letters.each do |letter|

  # check if first letter is vowel or consonant
  if is_consonant?(letter)
    # move it to the end
    removed_consonant = letters.shift
    letters = letters + removed_consonant.split
    #
  else
    letters.push("ay")
    return letters.join
  end

  # then add "ay" at the end and return
  end

end

# "eemoBay"
puts pig_latin_name("Beemo")




