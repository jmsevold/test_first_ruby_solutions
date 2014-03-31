#If a method is supposed to accomplish one thing, then let us approach this solution
#by dividing it into different methods that each have a specialty, corresponding to the needs of
# of the problem.

#We want our method to handle a string of words, so first we need to isolate each string
#then we need to examine each string, and see if it starts with a consonant sound, or a vowel sound.
#This means we will need two methods for those two focuses/intentions, and the original string
#will be replaced by the return value of a helper, which helper that is, will be determined by whether 
#the string starts with a consonant or vowel sound.

#So, intuitively, we will be using conditionals, iteration, and string manipulation. 

# split and iterate over string
  # if word begins with consonant sound
    #word = consonant_helper(word)
  #else
    #word = word + "ay"
  #end
  #words.join
  
#the consonant helper must iterate over each letter. if it is a consonant,
# append it to the end of the word, then add "ay"
  

def translate(words)
  vowels = %w{ a e i o }
  individual_words = words.split
  translated_words = individual_words.map do |word|
    if vowels.include?(word[0])
      word + "ay"
    else
      consonant_helper(word)
    end
  end
  translated_words.join(" ")
end

def consonant_helper(word)  #school => oolschay
  vowels = %w{ a e i o }
  consonants = ""
  remaining_vowels = ""
  vowel_index = 0
  word_char_array = word.split(//)
  word_char_array.each_with_index do |letter,index|
    if !(vowels.include?(letter))
      consonants += letter
    else
      vowel_index += index
      break
    end
  end
  remaining_vowels += word[(vowel_index..-1)]
  full_word = remaining_vowels + consonants + 'ay'
end
  

  
  
  
  
  
  
  
  