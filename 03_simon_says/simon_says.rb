def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  ((str + " ") * n).strip
end

def start_of_word(str,n)
  str[0..(n-1)]
end



def first_word(str)
  str_array = str.split
  str_array[0]
end

def titleize (str)
  str.capitalize!
  little_words = ['a','and','an','the','over','of','to']
  str_array = str.split
  str_array.each do |word|
    if !(little_words.include?(word))
        word.capitalize!
    end
  end
  str_array.join(" ")
end
 
